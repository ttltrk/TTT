
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### CLASSES

---

* [OOP](#OOP)
* [CLASSES_OBJECTS](#CLASSES_OBJECTS)
* [CREATE_CLASS](#CREATE_CLASS)
* [CREATE_OBJECT](#CREATE_OBJECT)
* [MULTIPLE_OBJECTS](#MULTIPLE_OBJECTS)
* [CLASS_ATTRIBUTES](#CLASS_ATTRIBUTES)
* [ACCESSING_ATTRIBUTES](#ACCESSING_ATTRIBUTES)
* [MODIFY_ATTRIBUTES](#MODIFY_ATTRIBUTES)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### OOP

OOP stands for Object-Oriented Programming.

Procedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods.

Object-oriented programming has several advantages over procedural programming:

OOP is faster and easier to execute
OOP provides a clear structure for the programs
OOP helps to keep the Java code DRY "Don't Repeat Yourself", and makes the code easier to maintain, modify and debug
OOP makes it possible to create full reusable applications with less code and shorter development time
Tip: The "Don't Repeat Yourself" (DRY) principle is about reducing the repetition of code. You should extract out the codes that are common for the application, and place them at a single place and reuse them instead of repeating it.

Classes and objects are the two main aspects of object-oriented programming.

```
class (fruit) >> objects (apple, banana, mango)
class (car) >> objects (volvo, audi, toyota)
```

So, a class is a template for objects, and an object is an instance of a class.
When the individual objects are created, they inherit all the variables and methods from the class.

[^^^](#CLASSES)

---

#### CLASSES_OBJECTS

Java is an object-oriented programming language.

Everything in Java is associated with classes and objects, along with its attributes and methods. For example: in real life, a car is an object. The car has attributes, such as weight and color, and methods, such as drive and brake.

```
class (car) >> objects (volvo, audi, toyota) >> attributes (weight, color) >> methods (drive, brake)
```

A Class is like an object constructor, or a "blueprint" for creating objects.

[^^^](#CLASSES)

---

#### CREATE_CLASS

To create a class, use the keyword class:

```java
public class HelloWorld {
    public static void main(String[] args) {

        int x = 100;

        System.out.println(x);
    }
}

>>>
100
>>>
```

[^^^](#CLASSES)

---

#### CREATE_OBJECT

In Java, an object is created from a class. We have already created the class named HelloWorld, so now we can use this to create objects.

To create an object of HelloWorld, specify the class name, followed by the object name, and use the keyword new:

```java
public class HelloWorld {
    int x = 100;

    public static void main(String[] args) {
        HelloWorld myObj = new HelloWorld();

        System.out.println(myObj.x);
    }
}

>>>
100
>>>
```

[^^^](#CLASSES)

---

#### MULTIPLE_OBJECTS

```java
public class HelloWorld {
    int x = 100;
    int y = 120;

    public static void main(String[] args) {
        HelloWorld myObj1 = new HelloWorld();
        HelloWorld myObj2 = new HelloWorld();

        System.out.println(myObj1.x);
        System.out.println(myObj2.y);
    }
}

>>>
100
120
>>>
```

[^^^](#CLASSES)

---

#### CLASS_ATTRIBUTES

```java
public class HelloWorld {
    int x = 100;
    int y = 120;

    public static void main(String[] args) {
        HelloWorld myObj1 = new HelloWorld();
        HelloWorld myObj2 = new HelloWorld();

        System.out.println(myObj1.x);
        System.out.println(myObj2.y);
    }
}

>>>
100
120
>>>
```

[^^^](#CLASSES)

---

#### ACCESSING_ATTRIBUTES

You can access attributes by creating an object of the class, and by using the dot syntax (.)

```java
public class HelloWorld {
    int x = 5;

    public static void main(String[] args) {
        HelloWorld myObj = new HelloWorld();
        System.out.println(myObj.x);
    }
}

>>>
5
>>>
```

[^^^](#CLASSES)

---

#### MODIFY_ATTRIBUTES

```java
public class HelloWorld {
    int x;

    public static void main(String[] args) {
        HelloWorld myObj = new HelloWorld();
        myObj.x = 40;
        System.out.println(myObj.x);
    }
}

>>>
40
>>>
```

```java
public class HelloWorld {
    int x = 10;

    public static void main(String[] args) {
        HelloWorld myObj = new HelloWorld();
        myObj.x = 25;
        System.out.println(myObj.x);
    }
}

>>>
25
>>>
```

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---

[^^^](#CLASSES)

---
