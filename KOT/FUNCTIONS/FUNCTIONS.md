
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [KOTLIN](https://github.com/ttltrk/TTT/tree/master/KOT/KOTLIN.md)

---

### FUNCTIONS

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```java
fun getGreeting(): String {
    return "Hello Kotlin"
}

fun main() {
    println("Hello Wolrd")
    println(getGreeting())
}

>>>
Hello Wolrd
Hello Kotlin
>>>
```

```java
fun getGreeting(): String {
    return "Hello Kotlin"
}

fun sayHello() {
    println(getGreeting())
}

fun main() {
    println("Hello Wolrd")
    println(getGreeting())
    sayHello()
}

>>>
Hello Wolrd
Hello Kotlin
Hello Kotlin
>>>
```

```java
fun getGreeting(): String = "Hello Kotlin"

fun sayHello() {
    println(getGreeting())
}

fun main() {
    println("Hello Wolrd")
    println(getGreeting())
    sayHello()
}

>>>
Hello Wolrd
Hello Kotlin
Hello Kotlin
>>>
```

```java
fun getGreeting() = "Hello Kotlin"

fun sayHello() {
    println(getGreeting())
}

fun main() {
    println("Hello Wolrd")
    println(getGreeting())
    sayHello()
}

>>>
Hello Wolrd
Hello Kotlin
Hello Kotlin
>>>
```

```java
fun sayHello(itemToGreet:String) {
    val msg = "Hello " + itemToGreet
    println(msg)
}

fun main() {
    sayHello(itemToGreet="Kotlin")
    sayHello(itemToGreet="World")
}

>>>
Hello Kotlin
Hello World
>>>
```

[^^^](#FUNCTIONS)

---
