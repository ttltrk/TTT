
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

#### JAVA_FLASH

---

* [COMMENTS](#COMMENTS)
* [VARIABLES](#VARIABLES)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [METHODS](#METHODS)
* [METHOD_PARAMETERS](#METHOD_PARAMETERS)
* [METHOD_OVERLOADING](#METHOD_OVERLOADING)
* [](#)
* [](#)
* [JAVA_SCOPE](#JAVA_SCOPE)
* [RECURSION](#RECURSION)
* [](#)
* [](#)
* [OOP](#OOP)

---

#### COMMENTS

##### Single line comments

```java
public class Main {
  public static void main(String[] args) {
    // This is a comment
    System.out.println("Hello World");
  }
}

>>>
Hello World
>>>
```

##### Multi line comments

```java
public class Main {
  public static void main(String[] args) {
    /* The code below will print the words Hello World
    to the screen, and it is amazing */
    System.out.println("Hello World");
  }
}

>>>
Hello World
>>>
```

[^^^](#JAVA_FLASH)

---

#### VARIABLES

Variables are containers for storing data values.
In Java, there are different types of variables, for example.

- **Primitive data types** - byte, short, int, long, float, double, boolean, char
- **Non-primitive data types** - String, Arrays, Classes

##### Declaring (Creating) Variables

To create a variable, you must specify the type and assign it a value.

```jv
type variableName = value;
```

```jv
public class Main {
  public static void main(String[] args) {
    String name = "John";
    int myNum = 15;
    int hisNum = 20;
    int yourNum;

    hisNum = 22;
    yourNum = 25;

    System.out.println(name);
    System.out.println(myNum);
    System.out.println(hisNum);
    System.out.println(yourNum);
  }
}

>>>
John
15
22
25
>>>
```

##### Final variables

If you don't want others (or yourself) to overwrite existing values, use the final keyword (this will declare the variable as "final" or "constant", which means unchangeable and read-only).

```jv
public class Main {
  public static void main(String[] args) {
    final int myNum = 15;
    myNum = 20; // will generate an error
    System.out.println(myNum);
  }
}

>>>
Main.java:4: error: cannot assign a value to final variable myNum
    myNum = 20;
         ^
1 error
>>>
```

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---

#### METHODS

```
- A method is a block of code which only runs when it is called.
- You can pass data, known as parameters, into a method.
- Methods are used to perform certain actions, and they are also known as functions.
- Why use methods? To reuse code: define the code once, and use it many times.
```

##### Create a Method

A method must be declared within a class. It is defined with the name of the method, followed by parentheses (). Java provides some pre-defined methods, such as System.out.println(), but you can also create your own methods to perform certain actions:

```jv
public class Main {
  static void myMethod() {
    // code to be executed
  }
}
```

- myMethod() is the name of the method
- static means that the method belongs to the Main class and not an object of the Main class. You will learn more about objects and how to access methods through objects later in this tutorial.
- void means that this method does not have a return value. You will learn more about return values later in this chapter

##### Call a Method

To call a method in Java, write the method's name followed by two parentheses () and a semicolon;
In the following example, ```myMethod()``` is used to print a text (the action), when it is called:

```jv
public class Main {
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

A method can also be called multiple times.

```jv
public class Main {
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

```jv
public class Main {
    static void firstMethod() {
        System.out.println("I just got executed!");
    }

    static void secondMethod() {
        System.out.println("the second one");
    }

    public static void main(String[] args) {
        firstMethod();
        secondMethod();
    }
}

>>>
I just got executed!
the second one
>>>
```

[^^^](#JAVA_FLASH)

---

#### METHOD_PARAMETERS

##### Parameters and Arguments

Information can be passed to methods as parameter. Parameters act as variables inside the method.
Parameters are specified after the method name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma.
The following example has a method that takes a String called fname as parameter. When the method is called, we pass along a first name, which is used inside the method to print the full name.

```jv
public class Main {
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

##### Multiple Parameters

You can have as many parameters as you like.

```jv
public class Main {
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

##### Return Values

The void keyword, used in the examples above, indicates that the method should not return a value. If you want the method to return a value, you can use a primitive data type (such as int, char, etc.) instead of void, and use the return keyword inside the method.

```jv
public class Main {
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

```jv
public class Main {
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

You can also store the result in a variable (recommended, as it is easier to read and maintain).

```jv
public class Main {
  static int myMethod(int x, int y) {
    return x + y;
  }

  public static void main(String[] args) {
    int z = myMethod(5, 3);
    System.out.println(z);
  }
}

>>>
8
>>>
```

##### A Method with If...Else

It is common to use if...else statements inside methods.

```jv
public class Main {

  // Create a checkAge() method with an integer parameter called age
  static void checkAge(int age) {

    // If age is less than 18, print "access denied"
    if (age < 18) {
      System.out.println("Access denied - You are not old enough!");

    // If age is greater than, or equal to, 18, print "access granted"
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

[^^^](#JAVA_FLASH)

---

#### METHOD_OVERLOADING

With method overloading, multiple methods can have the same name with different parameters:

```jv
int myMethod(int x)
float myMethod(float x)
double myMethod(double x, double y)
```

Consider the following example, which has two methods that add numbers of different type.

```jv
public class Main {
  static int plusMethodInt(int x, int y) {
    return x + y;
  }

  static double plusMethodDouble(double x, double y) {
    return x + y;
  }

  public static void main(String[] args) {
    int myNum1 = plusMethodInt(8, 5);
    double myNum2 = plusMethodDouble(4.3, 6.26);
    System.out.println("int: " + myNum1);
    System.out.println("double: " + myNum2);
  }
}

>>>
int: 13
double: 10.559999999999999
>>>
```

Instead of defining two methods that should do the same thing, it is better to overload one.
In the example below, we overload the plusMethod method to work for both int and double.

```jv
public class Main {
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

[^^^](#JAVA_FLASH)

---

#### JAVA_SCOPE

In Java, variables are only accessible inside the region they are created. This is called scope.

##### Method Scope

Variables declared directly inside a method are available anywhere in the method following the line of code in which they were declared:

```jv
public class Main {
  public static void main(String[] args) {

    // Code here cannot use x

    int x = 100;

    // Code here can use x
    System.out.println(x);
  }
}

>>>
100
>>>
```

##### Block Scope

A block of code refers to all of the code between curly braces {}.

Variables declared inside blocks of code are only accessible by the code between the curly braces, which follows the line in which the variable was declared.

```jv
public class Main {
  public static void main(String[] args) {

    // Code here CANNOT use x

    { // This is a block

      // Code here CANNOT use x

      int x = 100;

      // Code here CAN use x
      System.out.println(x);

    } // The block ends here

  // Code here CANNOT use x

  }
}

>>>
100
>>>
```

[^^^](#JAVA_FLASH)

---

#### RECURSION

Recursion is the technique of making a function call itself. This technique provides a way to break complicated problems down into simple problems which are easier to solve.
Recursion may be a bit difficult to understand. The best way to figure out how it works is to experiment with it.

Adding two numbers together is easy to do, but adding a range of numbers is more complicated. In the following example, recursion is used to add a range of numbers together by breaking it down into the simple task of adding two numbers.

```jv
public class Main {
  public static void main(String[] args) {
    int result = sum(10);
    System.out.println(result);
  }
  public static int sum(int k) {
    if (k > 0) {
      return k + sum(k - 1);
    } else {
      return 0;
    }
  }
}

>>>
55
>>>
```

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---

####

[^^^](#JAVA_FLASH)

---
