
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_BASICS

---

```
Strings in python are surrounded by either single quotation marks, or double quotation marks.
'hello' is the same as "hello".
```

---

* [BASICS](#BASICS)
* [ASSIGN_STR_TO_A_VAR](#ASSIGN_STR_TO_A_VAR)
* [MULTILNE_STR](#MULTILNE_STR)
* [STRINGS_ARE_ARRAYS](#STRINGS_ARE_ARRAYS)
* [LOOPING](#LOOPING)
* [STR_LENGTH](#STR_LENGTH)
* [CHECK_STR](#CHECK_STR)
* [CHECK_IF_NOT](#CHECK_IF_NOT)
* [FULL_ABC](#FULL_ABC)

---

#### BASICS

```
| P | y | t | h | o | n |
 0   1   2   3   4   5   6
-6  -5  -4  -3  -2  -1
```

```py
print("hello")
print('hello')

>>>
hello
hello
>>>
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

#### ASSIGN_STR_TO_A_VAR

Assigning a string to a variable is done with the variable name followed by an equal sign and the string.

```py
a = "Hello"

print(a)

>>>
Hello
>>>
```

[^^^](#STRINGS_BASICS)

---

#### MULTILNE_STR

You can assign a multiline string to a variable by using three quotes.

```py
a = """Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""

print(a)

>>>
Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua.
>>>
```

```py
a = '''Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua.'''

print(a)

>>>
Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua.
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STRINGS_ARE_ARRAYS

Like many other popular programming languages, strings in Python are arrays of bytes representing unicode characters.
However, Python does not have a character data type, a single character is simply a string with a length of 1.
Square brackets can be used to access elements of the string.

```py
a = "Hello, World!"

print(a[1])

>>>
e
>>>
```

[^^^](#STRINGS_BASICS)

---

#### LOOPING

Since strings are arrays, we can loop through the characters in a string, with a for loop.

```py
fruit = "banana"

for letters in fruit:
  print(letters)

>>>
b
a
n
a
n
a
>>>
```

[^^^](#STRINGS_BASICS)

---

#### STR_LENGTH

To get the length of a string, use the ```len()``` function.

```py
a = "Hello, World!"

print(len(a))

>>>
13
>>>
```

[^^^](#STRINGS_BASICS)

---

#### CHECK_STR

To check if a certain phrase or character is present in a string, we can use the keyword in.

```py
txt = "The best things in life are free!"

print("free" in txt)

>>>
True
>>>
```

[^^^](#STRINGS_BASICS)

---

#### CHECK_IF_NOT

To check if a certain phrase or character is NOT present in a string, we can use the keyword not in.

```py
txt = "The best things in life are free!"

print("expensive" not in txt)

>>>
True
>>>
```

```py
txt = "The best things in life are free!"

if "expensive" not in txt:
  print("No, 'expensive' is NOT present.")

>>>
No, 'expensive' is NOT present.
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
