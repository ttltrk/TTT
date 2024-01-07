
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md)

#### JAVA_FLASH

---

* [01_COMMENTS](#01_COMMENTS)
* [02_VARIABLES](#02_VARIABLES)
* [03_](#)
* [04_](#)
* [05_](#)
* [06_](#)
* [07_](#)

---

#### 01_COMMENTS

##### 01.01 - Single line comments

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

##### 01.02 - Multi line comments

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

#### 02_VARIABLES

Variables are containers for storing data values.
In Java, there are different types of variables, for example.

- **Primitive data types** - byte, short, int, long, float, double, boolean, char
- **Non-primitive data types** - String, Arrays, Classes

##### 02.01 Declaring (Creating) Variables

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

##### 02.02 Final variables

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

#### 03_

[^^^](#JAVA_FLASH)

---

#### 04_

[^^^](#JAVA_FLASH)

---

#### 05_

[^^^](#JAVA_FLASH)

---

#### 06_

[^^^](#JAVA_FLASH)

---

#### 07_

[^^^](#JAVA_FLASH)

---
