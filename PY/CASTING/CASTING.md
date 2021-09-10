
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CASTING

---

* [BASICS](#BASICS)

---

There may be times when you want to specify a type on to a variable. This can be done with casting.
Python is an object-orientated language, and as such it uses classes to define data types, including its primitive types.

- int() - constructs an integer number from an integer literal, a float literal (by removing all decimals), or a string literal (providing the string represents a whole number)
- float() - constructs a float number from an integer literal, a float literal or a string literal (providing the string represents a float or an integer)
- str() - constructs a string from a wide variety of data types, including strings, integer literals and float literals

---

#### BASICS

```py
x = int(1)
y = int(2.8)
z = int("3")

print(x)
print(y)
print(z)

>>>
1
2
3
>>>
```

```py
x = float(1)     
y = float(2.8)  
z = float("3")   
w = float("4.2")

print(x)
print(y)
print(z)
print(w)

>>>
1.0
2.8
3.0
4.2
>>>
```

```py
a = 2

x = str("s1")
y = str(a)   
z = str(3.0)

print(x)
print(y)
print(z)
print(' ')
print(type(x))
print(type(y))
print(type(z))

>>>
s1
2
3.0

<class 'str'>
<class 'str'>
<class 'str'>
>>>
```

[^^^](#CASTING)

---
