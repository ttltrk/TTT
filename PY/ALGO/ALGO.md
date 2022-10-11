
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### ALGO

---

[LINK](https://www.youtube.com/watch?v=fW_OS3LGB9Q&t=764s)

---

* [SIMPLE_RECURSIVE_ALGORITHMS](#SIMPLE_RECURSIVE_ALGORITHMS)
* [ALGORITHMS_WITHIN_DATA_STRUCTURES](#ALGORITHMS_WITHIN_DATA_STRUCTURES)
* [DIVIDE_AND_CONQUER](#DIVIDE_AND_CONQUER)
* [GREEDY_ALGORITHMS](#GREEDY_ALGORITHMS)
* [DYNAMIC_PROGRAMMING](#DYNAMIC_PROGRAMMING)

---

#### SIMPLE_RECURSIVE_ALGORITHMS

factorial

```py
def iterative_factorial(n):
    fact = 1
    for i in range(2, n+1):
        fact *= i
    return fact

iterative_factorial(5)

>>>
120
>>>
```

```py
def recur_factorial(n):
    if n == 1:
        return n
    else:
        return n * recur_factorial(n-1)

recur_factorial(5)

>>>
120
>>>
```

- Advanced permutations

```
3! = 3x2x1
```

```py
def permute(string, pocket=""):
    if len(string) == 0:
        print(pocket)
    else:
        for i in range(len(string)):
            letter = string[i]
            front = string[0:i]
            back = string[i+1:]
            together = front + back
            permute(together, letter + pocket)

print(permute("ABC", ""))

>>>
CBA
BCA
CAB
ACB
BAC
ABC
>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

[^^^](#ALGO)

---

#### ALGORITHMS_WITHIN_DATA_STRUCTURES

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

[^^^](#ALGO)

---

#### DIVIDE_AND_CONQUER

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

[^^^](#ALGO)

---

#### GREEDY_ALGORITHMS

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

[^^^](#ALGO)

---

#### DYNAMIC_PROGRAMMING

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

```py

>>>

>>>
```

[^^^](#ALGO)

---
