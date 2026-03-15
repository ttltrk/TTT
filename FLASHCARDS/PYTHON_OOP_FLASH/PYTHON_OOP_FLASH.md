
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

---

### PYTHON_OOP_FLASH

---

* [OOP_FUNDAMENTALS](#OOP_FUNDAMENTALS)
* [OOP_INIT_METH](#OOP_INIT_METH)
* [OOP_SELF_PARAM](#OOP_SELF_PARAM)
* [OOP_SELF_PARAM_DIFF_NAME](#OOP_SELF_PARAM_DIFF_NAME)
  
---

#### OOP_FUNDAMENTALS

```
CLASS: Fruit
OBJECTS: Apple Banana, Mango

CLASS: Car
OBJECTS: Audi, VW, Mercedes
```

[^^^](#PYTHON_OOP_FLASH)

---

#### OOP_INIT_METH

```
The __init__() method is used to assign values to object properties,
or to perform operations that are necessary when the object is being created.

Note: The __init__() method is called automatically every time
the class is being used to create a new object.

Without the __init__() method, you would need to
set properties manually for each object:
```

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

p1 = Person("Emil", 36)

print(p1.name)
print(p1.age)

>>>
Emil
36
>>>
```

[^^^](#PYTHON_OOP_FLASH)

---

#### OOP_SELF_PARAM

```
The self parameter is a reference to the current instance of the class.
It is used to access properties and methods that belong to the class.
```

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def greet(self):
    print("Hello, my name is " + self.name)

p1 = Person("Emil", 25)
p1.greet()

>>>
Hello, my name is Emil
>>>
```

[^^^](#PYTHON_OOP_FLASH)

---

#### OOP_SELF_PARAM_DIFF_NAME

```py
class Person:
  def __init__(myobject, name, age):
    myobject.name = name
    myobject.age = age

  def greet(abc):
    print("Hello, my name is " + abc.name)

p1 = Person("Emil", 36)
p1.greet()

>>>
Hello, my name is Emil.
>>>
```

[^^^](#PYTHON_OOP_FLASH)

---
