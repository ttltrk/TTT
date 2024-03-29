
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### IF_ELSE

---

* [IF](#IF)
* [ELSE](#ELSE)
* [ELSE_IF](#ELSE_IF)
* [ONELINER](#ONELINER)

---

You already know that Java supports the usual logical conditions from mathematics:

```
Less than: a < b
Less than or equal to: a <= b
Greater than: a > b
Greater than or equal to: a >= b
Equal to a == b
Not Equal to: a != b
```

You can use these conditions to perform different actions for different decisions.

Java has the following conditional statements:

```
Use if to specify a block of code to be executed, if a specified condition is true
Use else to specify a block of code to be executed, if the same condition is false
Use else if to specify a new condition to test, if the first condition is false
Use switch to specify many alternative blocks of code to be executed
```

[^^^](#IF_ELSE)

---

#### IF

Use the if statement to specify a block of Java code to be executed if a condition is true.

```java
public class HelloWorld {
    public static void main(String[] args) {
        if (20 > 18) {
            System.out.println("20 is greater than 18");
        }

    }
}

>>>
20 is greater than 18
>>>
```


```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 20;
        int y = 18;

        if (x > y) {
            System.out.println("x is greater than y");
        }

    }
}

>>>
x is greater than y
>>>
```

[^^^](#IF_ELSE)

---

#### ELSE

Use the else statement to specify a block of code to be executed if the condition is false.

```java
public class HelloWorld {
    public static void main(String[] args) {
        int time = 20;

        if (time < 18) {
            System.out.println("Good day.");
        } else {
            System.out.println("Good evening.");
        }

    }
}

>>>
Good evening.
>>>
```

[^^^](#IF_ELSE)

---

#### ELSE_IF

Use the else if statement to specify a new condition if the first condition is false.

```java
public class HelloWorld {
    public static void main(String[] args) {
        int time = 22;

        if (time < 10) {
            System.out.println("Good morning.");
        } else if (time < 18) {
            System.out.println("Good day.");
        } else {
            System.out.println("Good evening.");
        }

    }
}

>>>
Good evening.
>>>
```

[^^^](#IF_ELSE)

---

#### ONELINER

There is also a short-hand if else, which is known as the ternary operator because it consists of three operands.

It can be used to replace multiple lines of code with a single line, and is most often used to replace simple if else statements:

instead of:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int time = 20;

        if (time < 18) {
            System.out.println("Good day.");
        } else {
            System.out.println("Good evening.");
        }

    }
}

>>>
Good evening.
>>>
```

use this:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int time = 20;

        String result = (time < 18) ? "Good day." : "Good evening.";
        System.out.println(result);

    }
}

>>>
Good evening.
>>>
```

[^^^](#IF_ELSE)

---
