
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [KOTLIN](https://github.com/ttltrk/TTT/tree/master/KOT/KOTLIN.md)

---

### COLLECTIONS_ITERATIONS

---

```

```

---

* [BASICS](#BASICS)

---

#### BASICS

```java
fun main() {
    val interestingThings = arrayOf("Kotlin", "Coding", "Bikes")

    println(interestingThings.size)
    println(interestingThings[0])
    println(interestingThings.get(2))
}

>>>
3
Kotlin
Bikes
>>>
```

[^^^](#COLLECTIONS_ITERATIONS)

---

- FOR LOOP

```java
fun main() {
    val interestingThings = arrayOf("Kotlin", "Coding", "Bikes")

    for (elems in interestingThings) {
        println(elems)
    }
}

>>>
Kotlin
Coding
Bikes
>>>
```

```java
fun main() {
    val interestingThings = arrayOf("Kotlin", "Coding", "Bikes")

    interestingThings.forEach {
        println(it)

    }
}

>>>
Kotlin
Coding
Bikes
>>>
```

```java
fun main() {
    val interestingThings = arrayOf("Kotlin", "Coding", "Bikes")

    interestingThings.forEach { elems ->
        println(elems)

    }
}

>>>
Kotlin
Coding
Bikes
>>>
```

[^^^](#COLLECTIONS_ITERATIONS)

---
