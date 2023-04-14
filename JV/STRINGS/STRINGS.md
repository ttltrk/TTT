
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### STRINGS

---

* [STRING_LENGTH](#STRING_LENGTH)
* [STRING_METHODS](#STRING_METHODS)
* [](#)
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

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---

####

[^^^](#STRINGS)

---
