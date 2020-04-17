
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

#### endswith

```
Returns true if the string ends with the specified value
```

```py
txt = "Hello, welcome to my world."
txt1 = "apple"

x = txt.endswith(".")
y = txt.endswith("a")
z = txt1.endswith('e')

print(x)
print(y)
print(z)

>>>
True
False
True
>>>
```

[^^^](#STRINGS_METHODS)

---

#### expandtabs

```
Sets the tab size of the string
```

```py
txt = "H\te\tl\tl\to"

print(txt)
print(txt.expandtabs())
print(txt.expandtabs(2))
print(txt.expandtabs(4))
print(txt.expandtabs(10))

>>>
H	e	l	l	o
H       e       l       l       o
H e l l o
H   e   l   l   o
H         e         l         l         o
>>>
```

[^^^](#STRINGS_METHODS)

---

#### find

```
Searches the string for a specified value and returns the position of where it was found
```

```py
txt = "Hello, welcome to my world."

s1 = txt.find("Hello")
s2 = txt.find("welcome")
s3 = txt.find("to")
s4 = txt.find("my")
s5 = txt.find("world")

x1 = txt.find("e", 1, 10)
x2 = txt.find("e", 2, 10)

print(s1)
print(s2)
print(s3)
print(s4)
print(s5)
print(x1)
print(x2)

>>>
0
7
15
18
21
1
8
>>>
```

[^^^](#STRINGS_METHODS)

---

#### format

```
Formats specified values in a string
```

```py
txt = "For only {price:.2f} dollars!"
print(txt.format(price = 49))

>>>
For only 49.00 dollars!
>>>
```

[^^^](#STRINGS_METHODS)

---

#### format_map

```
Formats specified values in a string
```

```py
point = {'x':4,'y':-5}
print('{x} {y}'.format_map(point))

point = {'x':4,'y':-5, 'z': 0}
print('{x} {y} {z}'.format_map(point))

>>>
4 -5
4 -5 0
>>>
```

[^^^](#STRINGS_METHODS)

---

#### index

```
Searches the string for a specified value and returns the position of where it was found
```

```py
txt = "Hello, welcome to my world."
x = txt.index("welcome")
z = txt.index("to")

print(x)
print(z)

>>>
7
15
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isalnum

```
Returns True if all characters in the string are alphanumeric
```

```py
txt = "Company12"
x = txt.isalnum()
print(x)

>>>
True
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isalpha

```
Returns True if all characters in the string are in the alphabet
```

```py
txt = "CompanyX"
x = txt.isalpha()
print(x)

>>>
True
>>>
```

```py
txt = '123'
x = txt.isalpha()
print(x)

>>>
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isdecimal

```
Returns True if all characters in the string are decimals
```

```py
txt = "\u0033" #unicode for 3

x = txt.isdecimal()

print(x)

>>>
True
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isdigit

```
Returns True if all characters in the string are digits
```

```py
txt = "50800"
txt1 = 'hello'

x = txt.isdigit()
y = txt1.isdigit()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isidentifier

```
Returns True if the string is an identifier
```

```py
txt = "Demo"
txt1 = "50800"

x = txt.isidentifier()
y = txt1.isidentifier()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### islower

```
Returns True if all characters in the string are lower case
```

```py
txt = "hello world!"
txt1 = "BBB"

x = txt.islower()
y = txt1.islower()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isnumeric

```
Returns True if all characters in the string are numeric
```

```py
txt = "565543"
txt1 = "444a"

x = txt.isnumeric()
y = txt1.isnumeric()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isprintable

```
Returns True if all characters in the string are printable
```

```py
txt = "Hello! Are you #1?"

x = txt.isprintable()

print(x)

>>>
True
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isspace

```
Returns True if all characters in the string are whitespaces
```

```py
txt = "   "
txt1 = " s  "

x = txt.isspace()
y = txt1.isspace()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### istitle

```
Returns True if the string follows the rules of a title
```

```py
txt = "Hello, And Welcome To My World!"
txt1 = "Hello, And welcome To My World!"

x = txt.istitle()
y = txt1.istitle()

print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### isupper

```
Returns True if all characters in the string are upper case
```

```py
txt = "THIS IS NOW!"
txt1 = "THIS IS NoW!"

x = txt.isupper()
y = txt1.isupper()


print(x)
print(y)

>>>
True
False
>>>
```

[^^^](#STRINGS_METHODS)

---

#### join

```
Joins the elements of an iterable to the end of the string
```

```py
myTuple = ("John", "Peter", "Vicky")

x = "#".join(myTuple)
y = " *** ".join(myTuple)

print(x)
print(y)

>>>
John#Peter#Vicky
John *** Peter *** Vicky
>>>
```

[^^^](#STRINGS_METHODS)

---

#### ljust

```
Returns a left justified version of the string
```

```py
txt = "banana"

x = txt.ljust(20)
y = txt.ljust(10)
z = txt.ljust(5)

print(x, "is my favorite fruit.")
print(y, "is my favorite fruit.")
print(z, "is my favorite fruit.")

>>>
banana               is my favorite fruit.
banana     is my favorite fruit.
banana is my favorite fruit.
>>>
```

[^^^](#STRINGS_METHODS)

---

#### lower

```
Converts a string into lower case
```

```py
txt = "Hello my FRIENDS"

x = txt.lower()

print(x)

>>>
hello my friends
>>>
```

[^^^](#STRINGS_METHODS)

---

#### lstrip

```
Returns a left trim version of the string
```

```py
txt = "     banana     "

x = txt.lstrip()

print("of all fruits", x, "is my favorite")

>>>
of all fruits banana      is my favorite
>>>
```

[^^^](#STRINGS_METHODS)

---

#### maketrans

```
Returns a translation table to be used in translations
```

```py


>>>

>>>
```

[^^^](#STRINGS_METHODS)

---

#### partition

```
Returns a tuple where the string is parted into three parts
```

```py
txt = "I could eat bananas all day"

x = txt.partition("bananas")

print(x)

>>>
('I could eat ', 'bananas', ' all day')
>>>
```

[^^^](#STRINGS_METHODS)

---

#### replace

```
Returns a string where a specified value is replaced with a specified value
```

```py
txt = "I like bananas"

x = txt.replace("bananas", "apples")

print(x)

>>>
I like apples
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
