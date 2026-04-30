
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [FLASHCARDS](https://github.com/ttltrk/TTT/blob/master/FLASHCARDS/FLASHCARDS.md)

---

### ALGO_FLASH

---

|no|name|description|
|----|----|-----------|
|01|Linear Search|Linear search (or sequential search) is the simplest search algorithm. It checks each element one by one.|
|02|Binary Search|The Binary Search algorithm searches through a sorted array and returns the index of the value it searches for.|
|03|Bubble Sort |Bubble Sort is an algorithm that sorts an array from the lowest value to the highest value.|
|04|Selection Sort |The Selection Sort algorithm finds the lowest value in an array and moves it to the front of the array.|
|05|Insertion Sort |The Insertion Sort algorithm uses one part of the array to hold the sorted values, and the other part of the array to hold values that are not sorted yet.|
|06|Quick Sort | |
|07|Counting Sort | |
|08|Radix Sort | |
|09|Merge Sort | |

---

#### LINEAR_SEARCH

```
Linear search (or sequential search) is the simplest search algorithm. It checks each element one by one.
```

```py
mylist = [3, 7, 2, 9, 5, 1, 8, 4, 6]

if 4 in mylist:
  print("Found!")
else:
  print("Not found!")

>>>
Found!
>>>
```

```py
def linearSearch(arr, targetVal):
  for i in range(len(arr)):
    if arr[i] == targetVal:
      return i
  return -1

mylist = [3, 7, 2, 9, 5, 1, 8, 4, 6]
x = 7

result = linearSearch(mylist, x)

if result != -1:
  print("Found at index", result)
else:
  print("Not found")

>>>
Found at index 1
>>>
```

---

#### BINARY_SEARCH

---
