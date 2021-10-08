
#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### BOOLEANS

---

* [BOOLEAN_VALUES](#BOOLEAN_VALUES)
* [EVALUATE_VALUES_AND_VARIABLES](#EVALUATE_VALUES_AND_VARIABLES)
* [MOST_VALUES_ARE_TRUE](#MOST_VALUES_ARE_TRUE)
* [SOME_VALUES_ARE_FALSE](#SOME_VALUES_ARE_FALSE)
* [FUNCTIONS_CAN_RETURN_A_BOOLEAN](#FUNCTIONS_CAN_RETURN_A_BOOLEAN)

---

#### BOOLEAN_VALUES

```
Booleans represent one of two values: True or False.
In programming you often need to know if an expression is True or False.
You can evaluate any expression in Python, and get one of two answers, True or False.
When you compare two values, the expression is evaluated and Python returns the Boolean answer.
```

```py
print(10 > 9)
print(10 == 9)
print(10 < 9)

>>>
True
False
False
>>>
```

```
When you run a condition in an if statement, Python returns True or False.
```

```py
a = 200
b = 33

if b > a:
  print("b is greater than a")
else:
  print("b is not greater than a")

>>>
b is not greater than a
>>>
```

[^^^](#BOOLEANS)

---

#### EVALUATE_VALUES_AND_VARIABLES

The ```bool()``` function allows you to evaluate any value, and give you True or False in return,

```py
print(bool("Hello"))
print(bool(15))

>>>
True
True
>>>
```

```py
x = "Hello"
y = 15

print(bool(x))
print(bool(y))

>>>
True
True
>>>
```

[^^^](#BOOLEANS)

---

#### MOST_VALUES_ARE_TRUE

Almost any value is evaluated to True if it has some sort of content.
Any string is True, except empty strings.
Any number is True, except 0.
Any list, tuple, set, and dictionary are True, except empty ones.

```py
bool("abc")
bool(123)
bool(["apple", "cherry", "banana"])

>>>
True
>>>
```

[^^^](#BOOLEANS)

---

#### SOME_VALUES_ARE_FALSE

```
In fact, there are not many values that evaluate to False, except empty values, such as (), [], {}, "",
the number 0, and the value None. And of course the value False evaluates to False.
```

```py
bool(False)
bool(None)
bool(0)
bool("")
bool(())
bool([])
bool({})

>>>
False
>>>
```

```
One more value, or object in this case, evaluates to False, and that is if you have an object
that is made from a class with a __len__ function that returns 0 or False.
```

```py
class myclass():
  def __len__(self):
    return 5

myobj = myclass()
print(bool(myobj))

>>>
True
>>>

class myclass():
  def __len__(self):
    return 0

myobj = myclass()
print(bool(myobj))

>>>
False
>>>
```

[^^^](#BOOLEANS)

---

#### FUNCTIONS_CAN_RETURN_A_BOOLEAN

```py
def myFunction() :
  return False

print(myFunction())

>>>
False
>>>

def myFunction() :
  return True

print(myFunction())

>>>
True
>>>
```

```
You can execute code based on the Boolean answer of a function.
```

```py
def myFunction() :
  return True

if myFunction():
  print("YES!")
else:
  print("NO!")

>>>
YES!
>>>
```

```
Python also has many built-in functions that return a boolean value, like the ```isinstance()``` function,
which can be used to determine if an object is of a certain data type:
```

```py
x = 200
print(isinstance(x, int))

>>>
True
>>>
```

[^^^](#BOOLEANS)

---
