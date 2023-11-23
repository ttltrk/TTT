
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

```
1. Create Classes:
  - why, HOW
  - Class vs instance
2. Functions Inside Classes
3. Inheritance (Base + Child class)
4. Encapsulation (Private / Public)
5. properties (Getter / Setter)
```

```
4 principles of OOP

1. Inheritance
2. Polymorphism
3. Encapsulation
4. Abstraction 
```



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
  def __init__(self, name, age, position, feeling):
    self.name = name
    self.age = age
    self.position = position
    self.feeling = feeling

p1 = Person("John", 36, "dev", "ok")

print(p1.name)
print(p1.age)
print(p1.position)
print(p1.feeling)

>>>
John
36
dev
ok
>>>
```

```
The __init__() function is called automatically every time the class is being used to create a new object.
```

- Object Methods

```
Objects can also contain methods. Methods in objects are functions that belong to the object.
```

```py
class Person:
  def __init__(self, name, age, feeling):
    self.name = name
    self.age = age
    self.feeling = feeling

  def myName(self):
    print("Hello my name is " + self.name)

  def myAge(self):
    print("I'm " + str(self.age) + ' years old.')

  def myFeeling(self):
    print("I'm feeling " + self.feeling)

p1 = Person("John", 36, "fine")

p1.myName()
p1.myAge()
p1.myFeeling()

>>>
Hello my name is John
I'm 36 years old.
I'm feeling fine
>>>
```

```py
#------------------------------------------------------------

class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def myName(self):
    print("Hello my name is " + self.name)

  def myAge(self):
    print("I'm " + str(self.age) + ' years old.')

class Job:
   def __init__(self, position):
    self.position = position

   def myPos(self):
    print("I'm a " + self.position)

#------------------------------------------------------------    

p1 = Person("John", 36)
p2 = Job("developer")

#------------------------------------------------------------

p1.myName()
p1.myAge()
p2.myPos()

#------------------------------------------------------------

>>>
Hello my name is John
I'm 36 years old.
I'm a developer
>>>
```

```
The self parameter is a reference to the current instance of the class,
and is used to access variables that belong to the class.
```

- The self Parameter

```
The self parameter is a reference to the current instance of the class,
and is used to access variables that belongs to the class.
It does not have to be named self , you can call it whatever you like,
but it has to be the first parameter of any function in the class
```

```py
class Person:
  def __init__(mysillyobject, name, age):
    mysillyobject.name = name
    mysillyobject.age = age

  def myfunc(abc):
    print("Hello my name is " + abc.name)

p1 = Person("John", 36)
p1.myfunc()

>>>
Hello my name is John
>>>
```

- Modify Object Properties

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def myfunc(self):
    print("Hello my name is " + self.name)

p1 = Person("John", 36)

print(p1.age)

p1.age = 40

print(p1.age)

>>>
36
40
>>>
```

- Delete Object Properties

```py
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age

  def myfunc(self):
    print("Hello my name is " + self.name)

p1 = Person("John", 36)

del p1.age

print(p1.age)

>>>
AttributeError: 'Person' object has no attribute 'age'
>>>
```

- Inheritance

```
Inheritance allows us to define a class that inherits all the methods and properties
from another class.
Parent class is the class being inherited from, also called base class.
Child class is the class that inherits from another class, also called derived class.
```

- Create a Parent Class

```py
class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

#Use the Person class to create an object, and then execute the printname method:

x = Person("John", "Doe")

print(x.firstname)
print(x.lastname)

x.printname()

>>>
John
Doe
John Doe
>>>
```

- Create a Child Class

To create a class that inherits the functionality from another class, send the parent class as a parameter when creating the child class.

```py
class Student(Person):
  pass
```

```
Now the Student class has the same properties and methods as the Person class.
```

```py
class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

class Student(Person):
    pass

x = Person("John", "Doe")
x.printname()

x = Student("Mike", "Olsen")
x.printname()

>>>
John Doe
Mike Olsen
>>>
```

- Add the __init__() Function

```
So far we have created a child class that inherits the properties and methods from its parent.
We want to add the __init__() function to the child class (instead of the pass keyword).
```

```py
class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

class Student(Person):
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

x = Person("John", "Doe")
x.printname()

x = Student("Mike", "Olsen")
x.printname()

>>>
John Doe
Mike Olsen
>>>
```

```
When you add the __init__() function, the child class will no longer inherit the parent's __init__() function.
Note: The child's __init__() function overrides the inheritance of the parent's __init__() function.
To keep the inheritance of the parent's __init__() function, add a call to the parent's __init__() function
```

```py
class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

class Student(Person):
  def __init__(self, fname, lname):
    Person.__init__(self, fname, lname)

x = Student("Mike", "Olsen")
x.printname()

>>>
Mike Olsen
>>>
```

```
Now we have successfully added the __init__() function, and kept the inheritance
of the parent class, and we are ready to add functionality in the __init__() function.
```
