
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### ARRAYS

---

* [ACCESS_ELEMENTS](#ACCESS_ELEMENTS)
* [CHANGE_ELEMENT](#CHANGE_ELEMENT)
* [ARRAY_LENGTH](#ARRAY_LENGTH)
* [LOOP_THROUGH](#LOOP_THROUGH)
* [](#)
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

#### LOOP_THROUGH

You can loop through the array elements with the for loop, and use the length property to specify how many times the loop should run.

The following example outputs all elements in the cars array:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};

        for (int i = 0; i < cars.length; i++) {
            System.out.println(cars[i]); }
    }
}

>>>
Volvo
BMW
Ford
Mazda
>>>
```

[^^^](#ARRAYS)

---

#### LOOP_FOR_EACH

There is also a "for-each" loop, which is used exclusively to loop through elements in arrays:
The following example outputs all elements in the cars array, using a "for-each" loop:



```java
public class HelloWorld {
    public static void main(String[] args) {
        String[] cars = {"Volvo", "BMW", "Ford", "Mazda"};

        for (String i : cars) {
            System.out.println(i);
        }
    }
}

>>>
Volvo
BMW
Ford
Mazda
>>>
```

[^^^](#ARRAYS)

---

[^^^](#ARRAYS)

---
