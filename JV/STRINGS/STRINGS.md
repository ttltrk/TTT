
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### STRINGS

---

* [STRING_LENGTH](#STRING_LENGTH)
* [STRING_METHODS](#STRING_METHODS)
* [STRING_CONCATENATION](#STRING_CONCATENATION)
* [NUMBERS_AND_STRINGS](#NUMBERS_AND_STRINGS)
* [SPECIAL_CHARACTERS](#SPECIAL_CHARACTERS)
* [](#)

---

Strings are used for storing text.

A String variable contains a collection of characters surrounded by double quotes:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String greeting = "Hello";

        System.out.println(greeting);

    }
}

>>>
Hello
>>>
```

[^^^](#STRINGS)

---

#### STRING_LENGTH

A String in Java is actually an object, which contain methods that can perform certain operations on strings. For example, the length of a string can be found with the length() method:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

        System.out.println("The length of the txt string is: " + txt.length());

    }
}

>>>
The length of the txt string is: 26
>>>
```

[^^^](#STRINGS)

---

#### STRING_METHODS

* [the whole list](https://www.w3schools.com/java/java_ref_string.asp)

There are many string methods available, for example toUpperCase() and toLowerCase():

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "Hello World";

        System.out.println(txt.toUpperCase());
        System.out.println(txt.toLowerCase());  
    }
}

>>>
HELLO WORLD
hello world
>>>
```

The indexOf() method returns the index (the position) of the first occurrence of a specified text in a string (including whitespace):

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "Please locate where 'locate' occurs!";

        System.out.println(txt.indexOf("locate"));
        System.out.println(txt.indexOf("w"));
    }
}

>>>
7
14
>>>
```

[^^^](#STRINGS)

---

#### STRING_CONCATENATION

The + operator can be used between strings to combine them. This is called concatenation:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String firstName = "John";
        String lastName = "Doe";

        System.out.println(firstName + " " + lastName);
    }
}

>>>
John Doe
>>>
```

You can also use the concat() method to concatenate two strings:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String firstName = "John ";
        String lastName = "Doe";

        System.out.println(firstName.concat(lastName));
    }
}

>>>
John Doe
>>>
```

[^^^](#STRINGS)

---

#### NUMBERS_AND_STRINGS

If you add two numbers, the result will be a number:

```java
public class HelloWorld {
    public static void main(String[] args) {
        int x = 10;
        int y = 20;
        int z = x + y;

        System.out.println(z);
    }
}

>>>
30
>>>
```

If you add two strings, the result will be a string concatenation:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String x = "10";
        String y = "20";
        String z = x + y;  

        System.out.println(z);
    }
}

>>>
1020
>>>
```

If you add a number and a string, the result will be a string concatenation:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String x = "10";
        int y = 20;
        String z = x + y;

        System.out.println(z);
    }
}

>>>
1020
>>>
```

[^^^](#STRINGS)

---

#### SPECIAL_CHARACTERS

Because strings must be written within quotes, Java will misunderstand this string, and generate an error:

| Escape character |	Result |	Description |
| ----------------- | ------ | ------------ |
| \'	| ' |	Single quote |
| \"	| "	| Double quote |
| \\  |	\ |	Backslash |

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "We are the so-called \"Vikings\" from the north.";



        System.out.println(txt);
    }
}

>>>
We are the so-called "Vikings" from the north.
>>>
```

The sequence \'  inserts a single quote in a string:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "It\'s alright.";

        System.out.println(txt);
    }
}

>>>
"It's alright."
>>>
```

The sequence ```\\```  inserts a single backslash in a string:

```java
public class HelloWorld {
    public static void main(String[] args) {
        String txt = "The character \\ is called backslash.";

        System.out.println(txt);
    }
}

>>>
The character \ is called backslash.
>>>
```


| Code	| Result |
| ----- | ------ |
| \n	| New Line	|
| \r	| Carriage Return |
| \t	| Tab	|
| \b	| Backspace |
| \f	| Form Feed |

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---
