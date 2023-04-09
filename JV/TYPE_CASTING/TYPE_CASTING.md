
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### TYPE_CASTING

---

Type casting is when you assign a value of one primitive data type to another type.

In Java, there are two types of casting:

```
Widening Casting (automatically) - converting a smaller type to a larger type size
byte -> short -> char -> int -> long -> float -> double

Narrowing Casting (manually) - converting a larger type to a smaller size type
double -> float -> long -> int -> char -> short -> byte
```

---

```

```

---

* [WIDENING_CASTING](#WIDENING_CASTING)
* [NARROW_CASTING](#NARROW_CASTING)

---

#### WIDENING_CASTING

Widening casting is done automatically when passing a smaller size type to a larger size type:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int myInt = 9;
        double myDouble = myInt; // Automatic casting: int to double

        System.out.println(myInt);
        System.out.println(myDouble);
    }
}

>>>
9
9.0
>>>
```

[^^^](#TYPE_CASTING)

---

#### NARROW_CASTING

Narrowing casting must be done manually by placing the type in parentheses in front of the value:

```java
public class HelloWorld {
    public static void main(String[] args) {
        double myDouble = 9.78d;
        int myInt = (int) myDouble; // Manual casting: double to int

        System.out.println(myDouble);
        System.out.println(myInt);     
    }
}

>>>
9.78
9
>>>
```

[^^^](#TYPE_CASTING)

---
