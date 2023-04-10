
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### OPERATORS

---

Operators are used to perform operations on variables and values.

In the example below, we use the + operator to add together two values:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 100 + 50;

        System.out.println(x);
    }
}

>>>
150
>>>
```

Although the + operator is often used to add together two values, like in the example above, it can also be used to add together a variable and a value, or a variable and another variable:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int sum1 = 100 + 50;        // 150 (100 + 50)
        int sum2 = sum1 + 250;      // 400 (150 + 250)
        int sum3 = sum2 + sum2;     // 800 (400 + 400)

        System.out.println(sum1);
        System.out.println(sum2);
        System.out.println(sum3);
    }
}

>>>
150
400
800
>>>
```

Java divides the operators into the following groups:

- Arithmetic operators
- Assignment operators
- Comparison operators
- Logical operators
- Bitwise operators

[^^^](#OPERATORS)

---
