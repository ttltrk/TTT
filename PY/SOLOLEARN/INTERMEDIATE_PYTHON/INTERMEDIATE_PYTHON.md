
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [SOLOLEARN](https://github.com/ttltrk/TTT/blob/master/PY/SOLOLEARN/SOLOLEARN.md)

---

#### INTERMEDIATE_PYTHON

---

* [COLLECTION_TYPES](#COLLECTION_TYPES)
* [FUNCTIONAL_PROGRAMMING](#FUNCTIONAL_PROGRAMMING)
* [OOP](#OOP)
* [EXCEPTIONS](#EXCEPTIONS)
* [WORKING_WITH_FILES](#WORKING_WITH_FILES)

---

#### COLLECTION_TYPES

[^^^](#INTERMEDIATE_PYTHON)

---

#### FUNCTIONAL_PROGRAMMING

[^^^](#INTERMEDIATE_PYTHON)

---

#### OOP

#### OOP - CLASSES

##### Classes

The focal point of Object Oriented Programming (OOP) are objects, which are created using classes.
The class describes what the object will be, but is separate from the object itself. In other words, a class can be described as an object's blueprint, description, or definition.
You can use the same class as a blueprint for creating multiple different objects.

Classes are created using the keyword class and an indented block, which contains class methods (which are functions).
Below is an example of a simple class and its objects.

```py
class Cat:
  def __init__(self, color, legs):
    self.color = color
    self.legs = legs

felix = Cat("ginger", 4)
rover = Cat("dog-colored", 4)
stumpy = Cat("brown", 3)
```

This code defines a class named Cat, which has two attributes: color and legs.
Then the class is used to create 3 separate objects of that class.
Tap Continue to learn more!

##### __init__

The __init__ method is the most important method in a class.
This is called when an instance (object) of the class is created, using the class name as a function.

All methods must have self as their first parameter, although it isn't explicitly passed, Python adds the self argument to the list for you; you do not need to include it when you call the methods. Within a method definition, self refers to the instance calling the method.

Instances of a class have attributes, which are pieces of data associated with them.
In this example, Cat instances have attributes color and legs. These can be accessed by putting a dot, and the attribute name after an instance.
In an __init__ method, self.attribute can therefore be used to set the initial value of an instance's attributes.

```py
class Cat:
    def __init__(self, color, legs):
        self.color = color
        self.legs = legs

felix = Cat("ginger", 4)
print(felix.color)

>>>
ginger
>>>
```

In the example above, the __init__ method takes two arguments and assigns them to the object's attributes. The __init__ method is called the class constructor.

##### Methods

Classes can have other methods defined to add functionality to them.
Remember, that all methods must have self as their first parameter.
These methods are accessed using the same dot syntax as attributes.

```py
class Dog:
    def __init__(self, name, color):
        self.name = name
        self.color = color

    def bark(self):
        print("Woof!")

fido = Dog("Fido", "brown")
print(fido.name)
fido.bark()

>>>
Fido
Woof!
>>>
```

Class attributes are shared by all instances of the class.

[^^^](#INTERMEDIATE_PYTHON)

#### OOP - INHERITANCE

##### Inheritance

Inheritance provides a way to share functionality between classes.
Imagine several classes, Cat, Dog, Rabbit and so on. Although they may differ in some ways (only Dog might have the method bark), they are likely to be similar in others (all having the attributes color and name).
This similarity can be expressed by making them all inherit from a superclass Animal, which contains the shared functionality.
To inherit a class from another class, put the superclass name in parentheses after the class name.

```py
class Animal:
    def __init__(self, name, color):
        self.name = name
        self.color = color

class Cat(Animal):
    def purr(self):
        print("Purr...")

class Dog(Animal):
    def bark(self):
        print("Woof!")

fido = Dog("Fido", "brown")
print(fido.color)
fido.bark()

>>>
brown
Woof!
>>>
```

A class that inherits from another class is called a subclass.
A class that is inherited from is called a superclass.
If a class inherits from another with the same attributes or methods, it overrides them.

```py
class Wolf:
    def __init__(self, name, color):
        self.name = name
        self.color = color

    def bark(self):
        print("Grr...")

class Dog(Wolf):
    def bark(self):
        print("Woof")

husky = Dog("Max", "grey")
husky.bark()

>>>
Woof
>>>
```

In the example above, Wolf is the superclass, Dog is the subclass.

The function super is a useful inheritance-related function that refers to the parent class. It can be used to find the method with a certain name in an object's superclass.

```py
class A:
    def spam(self):
        print(1)

class B(A):
    def spam(self):
        print(2)
        super().spam()

B().spam()

>>>
2
1
>>>
```

super().spam() calls the spam method of the superclass.


[^^^](#INTERMEDIATE_PYTHON)

---

#### EXCEPTIONS

[^^^](#INTERMEDIATE_PYTHON)

---

#### WORKING_WITH_FILES

[^^^](#INTERMEDIATE_PYTHON)

---
