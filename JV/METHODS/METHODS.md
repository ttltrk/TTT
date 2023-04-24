
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### METHODS

---

* [CREATE_METHOD](#CREATE_METHOD)
* [CALL_METHOD](#CALL_METHOD)
* [METHOD_PARAMETERS](#METHOD_PARAMETERS)
* [MULTIPLE_PARAMETERS](#MULTIPLE_PARAMETERS)
* [RETURN_VALUES](#RETURN_VALUES)
* [METHOD_WITH_IF_ELSE](#METHOD_WITH_IF_ELSE)
* [METHOD_OVERLOADING](#METHOD_OVERLOADING)
* [METHOD_SCOPE](#METHOD_SCOPE)
* [](#)
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

#### MULTIPLE_PARAMETERS

You can have as many parameters as you like:

```java
public class HelloWorld {
    static void myMethod(String fname, int age) {
        System.out.println(fname + " is " + age);
    }

    public static void main(String[] args) {
        myMethod("Liam", 5);
        myMethod("Jenny", 8);
        myMethod("Anja", 31);
    }
}

>>>
Liam is 5
Jenny is 8
Anja is 31
>>>
```

Note that when you are working with multiple parameters, the method call must have the same number of arguments as there are parameters, and the arguments must be passed in the same order.

[^^^](#METHODS)

---

#### RETURN_VALUES

The void keyword, used in the examples above, indicates that the method should not return a value. If you want the method to return a value, you can use a primitive data type (such as int, char, etc.) instead of void, and use the return keyword inside the method:

```java
public class HelloWorld {
    static int myMethod(int x) {
        return 5 + x;
    }

    public static void main(String[] args) {
        System.out.println(myMethod(3));
    }
}

>>>
8
>>>
```

This example returns the sum of a method's two parameters:

```java
public class HelloWorld {
    static int myMethod(int x, int y) {
        return x + y;
    }

    public static void main(String[] args) {
        System.out.println(myMethod(5, 3));
    }
}

>>>
8
>>>
```

You can also store the result in a variable (recommended, as it is easier to read and maintain):

```java
public class HelloWorld {
    static int myMethod(int x, int y) {
        return x + y;
    }

    public static void main(String[] args) {
        int z = myMethod(6,6);
        System.out.println(z);
    }
}

>>>
12
>>>
```

[^^^](#METHODS)

---

#### METHOD_WITH_IF_ELSE

```java
public class HelloWorld {
    static void checkAge(int age) {
        if (age < 18) {
            System.out.println("Access denied - You are not old enough!");
        } else {
            System.out.println("Access granted - You are old enough!");
        }
    }
    public static void main(String[] args) {
        checkAge(20); // Call the checkAge method and pass along an age of 20
    }
}

>>>
Access granted - You are old enough!
>>>
```

[^^^](#METHODS)

---

#### METHOD_OVERLOADING

With method overloading, multiple methods can have the same name with different parameters:

```java
public class HelloWorld {
    static int plusMethod(int x, int y) {
        return x + y;
    }

    static double plusMethod(double x, double y) {
        return x + y;
    }

    public static void main(String[] args) {
        int myNum1 = plusMethod(8, 5);
        double myNum2 = plusMethod(4.3, 6.26);
        System.out.println("int: " + myNum1);
        System.out.println("double: " + myNum2);
    }
}

>>>
int: 13
double: 10.559999999999999
>>>
```

[^^^](#METHODS)

---

#### METHOD_SCOPE

In Java, variables are only accessible inside the region they are created. This is called scope.
Variables declared directly inside a method are available anywhere in the method following the line of code in which they were declared:


```java
public class HelloWorld {
    public static void main(String[] args) {

        // Code here CANNOT use x

        int x = 100;

        // Code here can use x

        System.out.println(x);
    }
}

>>>
100
>>>
```

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

[^^^](#METHODS)

---

[^^^](#METHODS)

---

[^^^](#METHODS)

---
