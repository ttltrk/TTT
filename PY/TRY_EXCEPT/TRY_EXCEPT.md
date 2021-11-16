
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

#### TRY_EXCEPT

---

The try block lets you test a block of code for errors.
The except block lets you handle the error.
The finally block lets you execute code, regardless of the result of the try- and except blocks.

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
