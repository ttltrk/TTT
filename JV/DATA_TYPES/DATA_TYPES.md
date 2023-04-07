
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### DATA_TYPES

---

Data types are divided into two groups:

- Primitive data types - includes byte, short, int, long, float, double, boolean and char
- Non-primitive data types - such as String, Arrays and Classes (you will learn more about these in a later chapter)

---

* [PRIMITIVE_DATA_TYPES](#PRIMITIVE_DATA_TYPES)
* [NUMBERS](#NUMBERS)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### PRIMITIVE_DATA_TYPES

A primitive data type specifies the size and type of variable values, and it has no additional methods.
There are eight primitive data types in Java:

Data Type	| Size | Description
----------|------|-------------
byte	    | 1 byte |	Stores whole numbers from -128 to 127
short	    | 2 bytes | Stores whole numbers from -32,768 to 32,767
int	      | 4 bytes	| Stores whole numbers from -2,147,483,648 to 2,147,483,647
long	    | 8 bytes	| Stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
float	    | 4 bytes	| Stores fractional numbers. Sufficient for storing 6 to 7 decimal digits
double	  | 8 bytes	| Stores fractional numbers. Sufficient for storing 15 decimal digits
boolean	  | 1 bit	  | Stores true or false values
char	    | 2 bytes	| Stores a single character/letter or ASCII values

[^^^](#DATA_TYPES)

---

#### NUMBERS

Primitive number types are divided into two groups:

- Integer types stores whole numbers, positive or negative (such as 123 or -456), without decimals. Valid types are byte, short, int and long. Which type you should use, depends on the numeric value.

- Floating point types represents numbers with a fractional part, containing one or more decimals. There are two types: float and double.

##### INTEGER_TYPES

- The byte data type can store whole numbers from -128 to 127. This can be used instead of int or other integer types to save memory when you are certain that the value will be within -128 and 127:

- The short data type can store whole numbers from -32768 to 32767:

- The int data type can store whole numbers from -2147483648 to 2147483647. In general, and in our tutorial, the int data type is the preferred data type when we create variables with a numeric value.

- The long data type can store whole numbers from -9223372036854775808 to 9223372036854775807. This is used when int is not large enough to store the value. Note that you should end the value with an "L":

```java
public class HelloWorld {
    public static void main(String[] args) {
        byte myNumByte = 100;
        short myNumShort = 5000;
        int myNumInt = 100000;
        long myNumLong = 15000000000L;

        System.out.println(myNumByte);
        System.out.println(myNumShort);
        System.out.println(myNumInt);
        System.out.println(myNumLong);
    }
}

>>>
100
5000
100000
15000000000
>>>
```

[^^^](#DATA_TYPES)

---
