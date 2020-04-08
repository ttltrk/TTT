
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [STRINGS](https://github.com/ttltrk/TTT/blob/master/PY/STRINGS/STRINGS.md)

---

### STRINGS_METHODS

---

```
Python has a set of built-in methods that you can use on strings
```

---

* [capitalize](#capitalize)
* [casefold](#casefold)
* [center](#center)
* [count](#count)
* [encode](#encode)
* [endswith](#endswith)
* [expandtabs](#expandtabs)
* [find](#find)
* [format](#format)
* [format_map](#format_map)
* [index](#index)
* [isalnum](#isalnum)
* [isalpha](#isalpha)
* [isdecimal](#isdecimal)
* [isdigit](#isdigit)
* [isidentifier](#isidentifier)
* [islower](#islower)
* [isnumeric](#isnumeric)
* [isprintable](#isprintable)
* [isspace](#isspace)
* [istitle](#istitle)
* [isupper](#isupper)
* [join](#join)
* [ljust](#ljust)
* [lower](#lower)
* [lstrip](#lstrip)
* [maketrans](#maketrans)
* [partition](#partition)
* [replace](#replace)
* [rfind](#rfind)
* [rindex](#rindex)
* [rjust](#rjust)
* [rpartition](#rpartition)
* [rsplit](#rsplit)
* [rstrip](#rstrip)
* [split](#split)
* [splitlines](#splitlines)
* [startswith](#startswith)
* [strip](#strip)
* [swapcase](#swapcase)
* [title](#title)
* [translate](#translate)
* [upper](#upper)
* [zfill](#zfill)

---

#### capitalize

```
Converts the first character to upper case
```

```py
txt1='hello, and welcome to my world.'
txt2='bye'
txt3='iGLO'

x1=txt1.capitalize()
x2=txt2.capitalize()
x3=txt3.capitalize()

print(x1)
print(x2)
print(x3)

>>>
Hello, and welcome to my world.
Bye
Iglo
>>>
```

[^^^](#STRINGS_METHODS)

---

#### casefold

```
Converts string into lower case
```

```py
txt1='Hello, And Welcome To My World!'
txt2='BYE'
txt3='Bye'

x1=txt1.casefold()
x2=txt2.casefold()
x3=txt3.casefold()

print(x1)
print(x2)
print(x3)

>>>
hello, and welcome to my world!
bye
bye
>>>
```

[^^^](#STRINGS_METHODS)

---

#### center

```
Returns a centered string
```

```py
txt = "banana"

x1 = txt.center(10)
x2 = txt.center(20)
x3 = txt.center(30)
x4 = txt.center(10, 'x')
x5 = txt.center(20, 'x')
x6 = txt.center(30, 'x')

print(x1)
print(x2)
print(x3)
print(x4)
print(x5)
print(x6)

>>>
banana  
     banana       
          banana            
xxbananaxx
xxxxxxxbananaxxxxxxx
xxxxxxxxxxxxbananaxxxxxxxxxxxx
>>>
```

[^^^](#STRINGS_METHODS)

---

#### count

```
Returns the number of times a specified value occurs in a string
```

```py
s = 'blablaabcdefgblabla'
s1 = 'b'
s2 = 'f'

print(s.count(s1, 5, 10))
print(s.count(s1, 6, 100))
print(s.count(s2, 0, 100))

>>>
1
3
1
>>>
```

[^^^](#STRINGS_METHODS)

---

#### encode

```
Returns an encoded version of the string
```

```py
string01 = 'pythön!'
print('The string is:', string01)

string02 = string01.encode()
print('The encoded version is:', string02)

string03 = "My name is Ståle"
str03 = string03.encode()
print(str03)

>>>
The string is: pythön!
The encoded version is: b'pyth\xc3\xb6n!'
b'My name is St\xc3\xa5le'
>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

####

```

```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---
