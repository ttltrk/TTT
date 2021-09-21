
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### BOOLEANS

---

```
Booleans represent one of two values: True or False.
In programming you often need to know if an expression is True or False.
You can evaluate any expression in Python, and get one of two answers, True or False.
```

---

* [BASICS](#BASICS)

---

#### BASICS



```py
print(10 > 9)
print(10 == 9)
print(10 < 9)

>>>
True
False
False
>>>
```

```py
a = 200
b = 33

if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")

>>>
b is not greater than a
>>>
```

The ```bool()``` function allows you to evaluate any value, and give you True or False in return,

```py
print(bool("Hello"))
print(bool(15))

>>>
True
True
>>>
```

```py
x = "Hello"
y = 15

print(bool(x))
print(bool(y))

>>>
True
True
>>>
```

[^^^](#BOOLEANS)

---
