
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### OOP

---

* [LINKS](#LINKS)
* [RPI](https://github.com/ttltrk/TTT/blob/master/PY/OOP/RPI/RPI.md)
* [OOP_EXAMPLES](https://github.com/ttltrk/TTT/blob/master/PY/OOP/OOP_EXAMPLES/OOP_EXAMPLES.md)

---

#### LINKS

- YT

* [Object Oriented Programming (OOP) In Python - Beginner Crash Course](https://www.youtube.com/watch?v=-pEs-Bss8Wc)

---

```
Python is an object oriented programming language.
Almost everything in Python is an object, with its properties and methods.
A Class is like an object constructor, or a "blueprint" for creating objects.
```

- Create a Class

```
To create a class, use the keyword class
Create a class named MyClass, with a property named x and y
```

```py
class MyClass:

  x = 5
  y = 10
```

- Create Object

```
Now we can use the class named MyClass to create objects
Create an object named p1, and print the value of x and y
```

```py
class MyClass:

  x = 5
  y = 10  

p1 = MyClass()

print(p1.x)
print(p1.y)

>>>
5
10
>>>
```

- The __init__() Function

```
The examples above are classes and objects in their simplest form, and are not really useful
in real life applications.
To understand the meaning of classes we have to understand the built-in __init__() function.
All classes have a function called __init__(), which is always executed when the class
is being initiated.
Use the __init__() function to assign values to object properties, or other operations
that are necessary to do when the object is being created:
```

```py
class Person:
  def __init__(self, name, age, position):
    self.name = name
    self.age = age
    self.position = position

p1 = Person("John", 36, "dev")

print(p1.name)
print(p1.age)
print(p1.position)

>>>
John
36
dev
>>>
```

```
The __init__() function is called automatically every time the class is being used to create a new object.
```
