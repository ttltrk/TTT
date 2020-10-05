
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [KOTLIN](https://github.com/ttltrk/TTT/tree/master/KOT/KOTLIN.md)

---

### VARIABLES

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```java
val name2: String = "Steve"

fun main() {
    var name1: String = "Nate"

    println(name1)
    println(name2)
}

>>>
Nate
Steve
>>>
```

```java
val name: String = "Steve"
var greeting : String = "hello"

fun main() {

    println(greeting)
    println(name)

    greeting = "hi"

    println(greeting)
    println(name)
}

>>>
hello
Steve
hi
Steve
>>>
```

- how to add null

```java
val name: String = "Steve"
var greeting : String? = "hello"

fun main() {

    println(greeting)
    println(name)

    greeting = null

    println(greeting)
    println(name)
}

>>>
hello
Steve
null
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    if (greeting != null) {
        println(greeting)
    }

    println(name)
}

>>>
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    greeting = "hello"
    if (greeting != null) {
        println(greeting)
    }

    println(name)
}

>>>
hello
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    //greeting = "hello"
    if (greeting != null) {
        println(greeting)
    } else {
        println("hi")
    }

    println(name)
}

>>>
hi
Steve
>>>
```

- when

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    //greeting = "hello"
    when (greeting) {
        null -> println("hi")
        else -> println(greeting)
    }

    println(name)
}

>>>
hi
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    greeting = "hello"
    when (greeting) {
        null -> println("hi")
        else -> println(greeting)
    }

    println(name)
}

>>>
hello
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    //greeting = "yellow"
    val greetingToPrint = if(greeting != null) greeting else "Hi"

    println(greetingToPrint)
    println(name)

}

>>>
Hi
Steve
>>>
```

```java
val name = "Steve"
var greeting : String? = null

fun main() {

    greeting = "yellow"
    val greetingToPrint = if(greeting != null) greeting else "Hi"

    println(greetingToPrint)
    println(name)

}

>>>
yellow
>>>
```

[^^^](#VARIABLES)

---
