
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_MODIFY

---

```

```

---

* [UPPER_CASE](#UPPER_CASE)
* [LOWER_CASE](#LOWER_CASE)
* [REMOVE_WHITESPACE](#REMOVE_WHITESPACE)
* [REPLACE_STRING](#REPLACE_STRING)
* [SPLIT_STRING](#SPLIT_STRING)

---

#### UPPER_CASE

The ```upper()``` method returns the string in upper case:

```py
a = "Hello, World!"
print(a.upper())

>>>
HELLO, WORLD!
>>>
```

[^^^](#STRINGS_MODIFY)

---

#### LOWER_CASE

The ```lower()``` method returns the string in lower case:

```py
a = "Hello, World!"
print(a.lower())

>>>
hello, world!
>>>
```

[^^^](#STRINGS_MODIFY)

---

#### REMOVE_WHITESPACE

Whitespace is the space before ```and/or``` after the actual text, and very often you want to remove this space.
The ```strip()``` method removes any whitespace from the beginning or the end:


```py
a = " Hello, World! "
print(a.strip())

>>>
Hello, World!
>>>
```

[^^^](#STRINGS_MODIFY)

---

#### REPLACE_STRING

The ```replace()``` method replaces a string with another string:

```py
a = "Hello, World!"
print(a.replace("H", "J"))

>>>
Jello, World!
>>>
```

[^^^](#STRINGS_MODIFY)

---

#### SPLIT_STRING

The ```split()``` method returns a list where the text between the specified separator becomes the list items.
The ```split()``` method splits the string into substrings if it finds instances of the separator:


```py
a = "Hello, World!"
print(a.split(","))

>>>
['Hello', ' World!']
>>>
```

[^^^](#STRINGS_MODIFY)

---
