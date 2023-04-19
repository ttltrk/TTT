
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### MATH

---

* [RANDOM_NUMBERS](#RANDOM_NUMBERS)

---

The Math.max(x,y) method can be used to find the highest value of x and y
The Math.min(x,y) method can be used to find the lowest value of x and y
The Math.sqrt(x) method returns the square root of x
The Math.abs(x) method returns the absolute (positive) value of x


```java
public class HelloWorld {
    public static void main(String[] args) {

        System.out.println(Math.max(5, 10));
        System.out.println(Math.min(5, 10));
        System.out.println(Math.sqrt(64));
        System.out.println(Math.abs(-4.7));
    }
}

>>>
10
5
8.0
4.7
>>>
```

[^^^](#MATH)

---

#### RANDOM_NUMBERS

Math.random() returns a random number between 0.0 (inclusive), and 1.0 (exclusive):

```java
public class HelloWorld {
    public static void main(String[] args) {

        System.out.println(Math.random());
    }
}

>>>
0.12958760074794629
>>>
```

To get more control over the random number, for example, if you only want a random number between 0 and 100, you can use the following formula:

```java
public class HelloWorld {
    public static void main(String[] args) {

        int randomNum = (int)(Math.random() * 101);

        System.out.println(randomNum);
    }
}

>>>
82
>>>
```

[^^^](#MATH)

---
