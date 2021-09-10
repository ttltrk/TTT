
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_BASICS

---

```

```

---

* [BASICS](#BASICS)
* [FULL_ABC](#FULL_ABC)

---

#### BASICS

```
| P | y | t | h | o | n |
 0   1   2   3   4   5   6
-6  -5  -4  -3  -2  -1
```

```py
print("hellobello")
print(' ')
print("hello\nbello")
print(' ')
print("hello\"bello")

>>>
hellobello

hello
bello

hello"bello
>>>
```

```py
phrase = "hellobello"

print(phrase)

>>>
hellobello
>>>
```

```py
phrase = "hellobello"

print(phrase + ' is cool')

>>>
hellobello is cool
>>>
```

[^^^](#STRINGS_BASICS)

---

#### FULL_ABC

```py
import string as st
def high():

    abc=st.ascii_lowercase
    print(abc)
    print(abc[-1])
    print(abc[::-1])

print(high())

>>>
abcdefghijklmnopqrstuvwxyz
z
zyxwvutsrqponmlkjihgfedcba
>>>
```

[^^^](#STRINGS_BASICS)

---
