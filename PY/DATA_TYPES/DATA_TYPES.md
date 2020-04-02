
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATA_TYPES

---

```
In programming, data type is an important concept.
Variables can store data of different types, and different types can do different things.
Python has the following data types built-in by default, in these categories
```

---

* [BUILT_IN_DT](#BUILT_IN)
* [GETTING_THE_DT](#GETTING_THE_DT)
* [SETTING_THE_DT](#SETTING_THE_DT)
* [SETTING_THE_SPECIFIC_DT](#SETTING_THE_SPECIFIC_DT)

---

#### BUILT_IN_DT

```py
- Text Type: str
- Numeric Types: int, float, complex
- Sequence Types: list, tuple, range
- Mapping Type: dict
- Set Types: set, frozenset
- Boolean Type: bool
- Binary Types: bytes, bytearray, memoryview
```

[^^^](#DATA_TYPES)

---

#### GETTING_THE_DT

```py
x = 5
print(type(x))

>>>
<class 'int'>
>>>
```

[^^^](#DATA_TYPES)

---

#### SETTING_THE_DT

```py
x = "Hello World"
print(type(x))

>>>
<class 'str'>
>>>
```

```py
x = 20
print(type(x))

>>>
<class 'int'>
>>>
```

```py
x = 20.5
print(type(x))

>>>
<class 'float'>
>>>
```

```py
x = 1j
print(type(x))

>>>
<class 'complex'>
>>>
```

```py
x = ["apple", "banana", "cherry"]
print(type(x))

>>>
<class 'list'>
>>>
```

```py
x = ("apple", "banana", "cherry")
print(type(x))

>>>
<class 'tuple'>
>>>
```

```py
x = range(6)
print(type(x))

>>>
<class 'range'>
>>>
```

```py
x = {"name" : "John", "age" : 36}
print(type(x))

>>>
<class 'dict'>
>>>
```

```py
x = {"apple", "banana", "cherry"}
print(type(x))

>>>
<class 'set'>
>>>
```

```py
x = frozenset({"apple", "banana", "cherry"})
print(type(x))

>>>
<class 'frozenset'>
>>>
```

```py
x = True
print(type(x))

>>>
<class 'bool'>
>>>
```

```py
x = b"Hello"
print(type(x))

>>>
<class 'bytes'>
>>>
```

```py
x = bytearray(5)
print(type(x))

>>>
<class 'bytearray'>
>>>
```

```py
x = memoryview(bytes(5))
print(type(x))

>>>
<class 'memoryview'>
>>>
```

[^^^](#DATA_TYPES)

---

#### SETTING_THE_SPECIFIC_DT

```py
x = str("Hello World")

print(x)
print(type(x))

>>>
Hello World
<class 'str'>
>>>
```

```py
x = int(20)

print(x)
print(type(x))

>>>
20
<class 'int'>
>>>
```

```py
x = float(20.5)

print(x)
print(type(x))

>>>
20.5
<class 'float'>
>>>
```

```py
x = complex(1j)

print(x)
print(type(x))

>>>
1j
<class 'complex'>
>>>
```

```py
x = list(("apple", "banana", "cherry"))

print(x)
print(type(x))

>>>
['apple', 'banana', 'cherry']
<class 'list'>
>>>
```

```py
x = tuple(("apple", "banana", "cherry"))

print(x)
print(type(x))

>>>
('apple', 'banana', 'cherry')
<class 'tuple'>
>>>
```

```py
x = range(6)

print(x)
print(type(x))

>>>
range(0, 6)
<class 'range'>
>>>
```

```py
x = dict(name="John", age=36)

print(x)
print(type(x))

>>>
{'name': 'John', 'age': 36}
<class 'dict'>
>>>
```

```py
x = set(("apple", "banana", "cherry"))

print(x)
print(type(x))

>>>
{'cherry', 'banana', 'apple'}
<class 'set'>
>>>
```

```py
x = frozenset(("apple", "banana", "cherry"))

print(x)
print(type(x))

>>>
frozenset({'cherry', 'banana', 'apple'})
<class 'frozenset'>
>>>
```

```py
x = bool(5)

print(x)
print(type(x))

>>>
True
<class 'bool'>
>>>
```

```py
x = bytes(5)

print(x)
print(type(x))

>>>
b'\x00\x00\x00\x00\x00'
<class 'bytes'>
>>>
```

```py
x = bytearray(5)

print(x)
print(type(x))

>>>
bytearray(b'\x00\x00\x00\x00\x00')
<class 'bytearray'>
>>>
```

```py
x = memoryview(bytes(5))

print(x)
print(type(x))

>>>
<memory at 0x0000021B705B5AC8>
<class 'memoryview'>
>>>
```

[^^^](#DATA_TYPES)

---
