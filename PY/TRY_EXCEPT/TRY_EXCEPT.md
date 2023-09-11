
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

#### TRY_EXCEPT

---

The try block lets you test a block of code for errors.
The except block lets you handle the error.
The else block lets you execute code when there is no error.
The finally block lets you execute code, regardless of the result of the try- and except blocks.

---

##### Exception Handling

When an error occurs, or exception as we call it, Python will normally stop and generate an error message.

These exceptions can be handled using the try statement:

```py
try:
  print(x)
except:
  print("An exception occurred")

>>>
An exception occurred
>>>
```

[^^^](#TRY_EXCEPT)

---

##### Many Exceptions

You can define as many exception blocks as you want, e.g. if you want to execute a special block of code for a special kind of error:

```py
try:
  print(x)
except NameError:
  print("Variable x is not defined")
except:
  print("Something else went wrong")

>>>
Variable x is not defined
>>>

x = 5

try:
  print(x)
except NameError:
  print("Variable x is not defined")
except:
  print("Something else went wrong")

>>>
5
>>>
```

[^^^](#TRY_EXCEPT)

---

##### Else

You can use the else keyword to define a block of code to be executed if no errors were raised:

```py
try:
  print("Hello")
except:
  print("Something went wrong")
else:
  print("Nothing went wrong")

>>>
Hello
Nothing went wrong
>>>
```

[^^^](#TRY_EXCEPT)

---

##### Finally

The finally block, if specified, will be executed regardless if the try block raises an error or not.

```py
try:
  print(x)
except:
  print("Something went wrong")
finally:
  print("The 'try except' is finished")

>>>
5
The 'try except' is finished
>>>
```

This can be useful to close objects and clean up resources:

```py
try:
  f = open("demofile.txt")
  try:
    f.write("Lorum Ipsum")
  except:
    print("Something went wrong when writing to the file")
  finally:
    f.close()
except:
  print("Something went wrong when opening the file")

>>>
Something went wrong when opening the file
>>>
```

[^^^](#TRY_EXCEPT)

---

##### Raise an exception

As a Python developer you can choose to throw an exception if a condition occurs.
To throw (or raise) an exception, use the raise keyword.

```py
x = -1

if x < 0:
  raise Exception("Sorry, no numbers below zero")

>>>
Exception: Sorry, no numbers below zero
>>>
```

The raise keyword is used to raise an exception.
You can define what kind of error to raise, and the text to print to the user.

```py
x = "hello"

if not type(x) is int:
  raise TypeError("Only integers are allowed")

>>>
TypeError: Only integers are allowed
>>>
```

[^^^](#TRY_EXCEPT)

---
