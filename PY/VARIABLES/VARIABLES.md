
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

<h3 id='^'>VARIABLES</h3>

---

* <a href='#basics'>Basics</a></br>
* <a href='#assVal'>Assign Value to Multiple Variables</a></br>
* <a href='#textVar'>TEXT and VARIABLE</a></br>
* <a href='#globalVar'>Global Variables</a></br>
* <a href='#globalKey'>The global Keyword</a></br>

---

```
- Variables are containers for storing data values.
- Unlike other programming languages, Python has no command for declaring a variable.
- A variable is created the moment you first assign a value to it.
```

---

<h3 id='basics'>Basics</h3>

```py
x = 5
y = "John"

print(x)
print(y)

>>>
5
John
>>>
```

```py
x = 4 # x is of type int
x = "Sally" # x is now of type str

print(x)

>>>
Sally
>>>
```

```py
x = "John"
# is the same as
x = 'John'

print(x)

>>>
John
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='assVal'>Assign Value to Multiple Variables</h3>

```py
x, y, z = "Orange", "Banana", "Cherry"

print(x)
print(y)
print(z)

>>>
Orange
Banana
Cherry
>>>
```

```py
x = y = z = "Orange"

print(x)
print(y)
print(z)

>>>
Orange
Orange
Orange
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='textVar'>TEXT and VARIABLE</h3>

```py
x = "awesome"

print("Python is " + x)

>>>
Python is awesome
>>>
```

```py
x = "Python is "
y = "awesome"
z =  x + y

print(z)

>>>
Python is awesome
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='globalVar'>Global Variables</h3>

```
- Variables that are created outside of a function (as in all of the examples above) are known as global variables.
- Global variables can be used by everyone, both inside of functions and outside.
```

```py
x = "awesome"

def myfunc():
  print("Python is " + x)

myfunc()

>>>
Python is awesome
>>>
```

```py
x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

print("Python is " + x)

>>>
Python is fantastic
Python is awesome
>>>
```

<a href='#^'>^^^</a>

---

<h3 id='globalKey'>The global Keyword</h3>

```
- To create a global variable inside a function, you can use the global keyword.
- If you use the global keyword, the variable belongs to the global scope
```

```py
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)

>>>
Python is fantastic
>>>
```

```
- To change the value of a global variable inside a function, refer to the variable by using the global keyword
```

```py
x = "awesome"

def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)

>>>
Python is fantastic
>>>
```

<a href='#^'>^^^</a>

---
