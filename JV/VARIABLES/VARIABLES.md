
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### VARIABLES

---

```
In Java, there are different types of variables, for example:

String - stores text, such as "Hello". String values are surrounded by double quotes
int - stores integers (whole numbers), without decimals, such as 123 or -123
float - stores floating point numbers, with decimals, such as 19.99 or -19.99
char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes
boolean - stores values with two states: true or false
```

---

* [BASICS](#BASICS)
* [DISPLAY_VARIABLES](#DISPLAY_VARIABLES)
* [DECLARE_MANY_VARIABLES](#DECLARE_MANY_VARIABLES)

---

#### BASICS

```java
public class Hello {
    public static void main(String[] args) {

        int myFirstNumber = 5;
        int mySecNumber = 10+5;

        System.out.println("myFirstNumber");
        System.out.println(myFirstNumber);
        System.out.println(mySecNumber);

    }
}

>>>
myFirstNumber
5
15
>>>
```

```java
public class Hello {
    public static void main(String[] args) {

        int myFirstNumber = 5;
        int mySecNumber = 10+5;
        int myThirdNumber = 22;
        int myTotal = myFirstNumber + mySecNumber + myThirdNumber;

        System.out.println(myTotal);

    }
}

>>>
42
>>>
```

[^^^](#VARIABLES)

---

#### DISPLAY_VARIABLES

The ```println()``` method is often used to display variables.
To combine both text and a variable, use the + character.

```java
public class HelloWorld {
    public static void main(String[] args) {
        String name = "John";
        System.out.println("Hello " + name);
    }
}

>>>
Hello John
>>>
```

You can also use the + character to add a variable to another variable:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String firstName = "John ";
        String lastName = "Doe";

        String fullName = firstName + lastName;
        System.out.println(fullName);
    }
}

>>>
John Doe
>>>
```

For numeric values, the ```+``` character works as a mathematical operator (notice that we use int (integer) variables here):

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 5;
        int y = 6;

        System.out.println(x + y); // Print the value of x + y
    }
}

>>>
11
>>>
```

[^^^](#VARIABLES)

---

#### DECLARE_MANY_VARIABLES

To declare more than one variable of the same type, you can use a comma-separated list:

- Instead of writing:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 5;
        int y = 6;
        int z = 50;

        System.out.println(x + y + z);
    }
}

>>>
61
>>>
```

- You can simply write:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 5, y = 6, z = 50;

        System.out.println(x + y + z);
    }
}

>>>
61
>>>
```

[^^^](#VARIABLES)

---
