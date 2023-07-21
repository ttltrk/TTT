
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/FLASHCARDS.md) - [PYTHON_FLASH](https://github.com/ttltrk/TTT/tree/master/FLASHCARDS/PYTHON_FLASH/PYTHON_FLASH.md) - ENUMERATE

---

The ```enumerate()``` function takes a collection (e.g. a tuple) and returns it as an enumerate object.
The ```enumerate()``` function adds a counter as the key of the enumerate object.

```py
# Python program to illustrate
# enumerate function in loops
l1 = ["eat", "sleep", "repeat", "eat"]

# printing the tuples in object directly
for ele in enumerate(l1):
    print(ele)

print(' ')

# changing index and printing separately
for count, ele in enumerate(l1, 100):
    print(count, ele)

print(' ')

    # getting desired output from tuple
for count, ele in enumerate(l1):
    print(count)
    print(ele)
```

---
