
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

- INDEXING

```java
fun main() {
    val interestingThings = arrayOf("Kotlin", "Coding", "Bikes")

    interestingThings.forEachIndexed {index, elems ->
        println("$elems is at index $index")
    }
}

>>>
Kotlin is at index 0
Coding is at index 1
Bikes is at index 2
>>>
```

[^^^](#COLLECTIONS_ITERATIONS)

---

- LISTOF

```java
fun main() {
    val interestingThings = listOf("Kotlin", "Coding", "Bikes")

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

- KEY_AND_VALUE

```java
fun main() {

    val map = mapOf(1 to "a", 2 to "b", 3 to "c")
    map.forEach {key, value -> println("$key -> $value")}
}

>>>
1 -> a
2 -> b
3 -> c
>>>
```

[^^^](#COLLECTIONS_ITERATIONS)

---
