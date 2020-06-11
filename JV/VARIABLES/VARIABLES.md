
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
