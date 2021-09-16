
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_SLICING

---

```

```

---

* [BASICS](#BASICS)
* [FROM_THE_START](#FROM_THE_START)
* [FROM_TO_THE_END](#FROM_TO_THE_END)
* [NEGATIVE_INDEXING](#NEGATIVE_INDEXING)

---

#### BASICS

You can return a range of characters by using the slice syntax.
Specify the start index and the end index, separated by a colon, to return a part of the string.

```py
b = "Hello, World!"
print(b[2:5])

>>>
llo
>>>
```

[^^^](#STRINGS_SLICING)

---

#### FROM_THE_START

By leaving out the start index, the range will start at the first character:

```py
b = "Hello, World!"
print(b[:5])

>>>
Hello
>>>
```

[^^^](#STRINGS_SLICING)

---

#### FROM_TO_THE_END

By leaving out the end index, the range will go to the end

```py
b = "Hello, World!"
print(b[2:])

>>>
llo, World!
>>>
```

[^^^](#STRINGS_SLICING)

---

#### NEGATIVE_INDEXING

Use negative indexes to start the slice from the end of the string

```py
b = "Hello, World!"
print(b[-5:-2])

>>>
orl
>>>
```

[^^^](#STRINGS_SLICING)

---
