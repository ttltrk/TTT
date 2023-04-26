
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### ARRAYS

---

* [ACCESS_ELEMENTS](#ACCESS_ELEMENTS)
* [CHANGE_ELEMENT](#CHANGE_ELEMENT)
* [ARRAY_LENGTH](#ARRAY_LENGTH)
* [](#)
* [](#)

---

Arrays are used to store multiple values in a single variable, instead of declaring separate variables for each value.
To declare an array, define the variable type with square brackets

```java
String[] cars;
```

We have now declared a variable that holds an array of strings. To insert values to it, you can place the values in a comma-separated list, inside curly braces:

```java
String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
```

To create an array of integers, you could write:

```java
int[] myNum = {10, 20, 30, 40};
```

[^^^](#ARRAYS)

---

#### ACCESS_ELEMENTS

You can access an array element by referring to the index number.

```java
public class HelloWorld {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
        System.out.println(cars[0]);
    }
}

>>>
Volvo
>>>
```

[^^^](#ARRAYS)

---

#### CHANGE_ELEMENT

To change the value of a specific element, refer to the index number:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
        cars[0] = "Opel";
        System.out.println(cars[0]);
    }
}

>>>
Opel
>>>
```

[^^^](#ARRAYS)

---

#### ARRAY_LENGTH

To find out how many elements an array has, use the length property

```java
public class HelloWorld {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};
        System.out.println(cars.length);
    }
}

>>>
4
>>>
```

[^^^](#ARRAYS)

---
