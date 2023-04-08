
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
* [BOOLEANS](#BOOLEANS)
* [CHARACTERS](#CHARACTERS)
* [NON_PRIMITIVE_DATA_TYPES](#NON_PRIMITIVE_DATA_TYPES)

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

##### FLOATING_POINT_TYPES

You should use a floating point type whenever you need a number with a decimal, such as 9.99 or 3.14515.

The float and double data types can store fractional numbers. Note that you should end the value with an "f" for floats and "d" for doubles:

```java
public class HelloWorld {
    public static void main(String[] args) {
        float myNumFloat = 5.75f;
        double myNumDouble = 19.99d;

        System.out.println(myNumFloat);
        System.out.println(myNumDouble);
    }
}

>>>
5.75
19.99
>>>
```

Use float or double?

The precision of a floating point value indicates how many digits the value can have after the decimal point. The precision of float is only six or seven decimal digits, while double variables have a precision of about 15 digits. Therefore it is safer to use double for most calculations.

- Scientific Numbers

A floating point number can also be a scientific number with an "e" to indicate the power of 10:

```java
public class HelloWorld {
    public static void main(String[] args) {
        float f1 = 35e3f;
        double d1 = 12E4d;

        System.out.println(f1);
        System.out.println(d1);
    }
}

>>>
35000.0
120000.0
>>>
```

[^^^](#DATA_TYPES)

---

#### BOOLEANS

Very often in programming, you will need a data type that can only have one of two values, like:
```
YES / NO
ON / OFF
TRUE / FALSE
```

For this, Java has a boolean data type, which can only take the values true or false:

```java
public class HelloWorld {
    public static void main(String[] args) {
        boolean isJavaFun = true;
        boolean isFishTasty = false;

        System.out.println(isJavaFun);    
        System.out.println(isFishTasty);   
    }
}

>>>
true
false
>>>
```

[^^^](#DATA_TYPES)

---

#### CHARACTERS

The char data type is used to store a single character. The character must be surrounded by single quotes, like 'A' or 'c':

```java
public class HelloWorld {
    public static void main(String[] args) {
        char myGrade = 'B';

        System.out.println(myGrade);
    }
}

>>>
B
>>>
```

Alternatively, if you are familiar with ASCII values, you can use those to display certain characters:

```java
public class HelloWorld {
    public static void main(String[] args) {
        char myVar1 = 65, myVar2 = 66, myVar3 = 67;

        System.out.println(myVar1);
        System.out.println(myVar2);
        System.out.println(myVar3);
    }
}

>>>
A
B
C
>>>
```

The String data type is used to store a sequence of characters (text). String values must be surrounded by double quotes:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String greeting = "Hello World";

        System.out.println(greeting);
    }
}

>>>
Hello World
>>>
```

[^^^](#DATA_TYPES)

---

#### NON_PRIMITIVE_DATA_TYPES

Non-primitive data types are called reference types because they refer to objects.

The main difference between primitive and non-primitive data types are:

- Primitive types are predefined (already defined) in Java. Non-primitive types are created by the programmer and is not defined by Java (except for String).
- Non-primitive types can be used to call methods to perform certain operations, while primitive types cannot.
- A primitive type has always a value, while non-primitive types can be null.
- A primitive type starts with a lowercase letter, while non-primitive types starts with an uppercase letter.
- The size of a primitive type depends on the data type, while non-primitive types have all the same size.

Examples of non-primitive types are Strings, Arrays, Classes, Interface, etc. You will learn more about these in a later chapter.

[^^^](#DATA_TYPES)

---
