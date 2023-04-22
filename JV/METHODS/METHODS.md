
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### METHODS

---

* [CREATE_METHOD](#CREATE_METHOD)
* [CALL_METHOD](#CALL_METHOD)
* [METHOD_PARAMETERS](#METHOD_PARAMETERS)
* [MULTIPLE_PARAMETERS](#MULTIPLE_PARAMETERS)
* [](#)
* [](#)
* [](#)

---

A method is a block of code which only runs when it is called.

You can pass data, known as parameters, into a method.

Methods are used to perform certain actions, and they are also known as functions.

---

#### CREATE_METHOD

A method must be declared within a class. It is defined with the name of the method, followed by parentheses (). Java provides some pre-defined methods, such as System.out.println(), but you can also create your own methods to perform certain actions:

```java
public class HelloWorld {
    static void myMethod() {
        System.out.println("I just got executed!");
    }

    public static void main(String[] args) {
        myMethod();
    }
}

>>>
I just got executed!
>>>
```

[^^^](#METHODS)

---

#### CALL_METHOD

To call a method in Java, write the method's name followed by two parentheses () and a semicolon;

In the following example, myMethod() is used to print a text (the action), when it is called:

```java
public class HelloWorld {
    static void myMethod() {
        System.out.println("I just got executed!");
    }

    public static void main(String[] args) {
        myMethod();
    }
}

>>>
I just got executed!
>>>
```

A method can also be called multiple times:

```java
public class HelloWorld {
    static void myMethod() {
        System.out.println("I just got executed!");
    }

    public static void main(String[] args) {
        myMethod();
        myMethod();
        myMethod();
    }
}

>>>
I just got executed!
I just got executed!
I just got executed!
>>>
```

[^^^](#METHODS)

---

#### METHOD_PARAMETERS

Information can be passed to methods as parameter. Parameters act as variables inside the method.

Parameters are specified after the method name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma.

```java
public class HelloWorld {
    static void myMethod(String fname) {
        System.out.println(fname + " Refsnes");
    }

    public static void main(String[] args) {
        myMethod("Liam");
        myMethod("Jenny");
        myMethod("Anja");
    }
}

>>>
Liam Refsnes
Jenny Refsnes
Anja Refsnes
>>>
```

When a parameter is passed to the method, it is called an argument. So, from the example above: fname is a parameter, while Liam, Jenny and Anja are arguments.

[^^^](#METHODS)

---

[^^^](#METHODS)

---

[^^^](#METHODS)

---

[^^^](#METHODS)

---

[^^^](#METHODS)

---
