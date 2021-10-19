
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 36_LIST_PROCESSING

---

* [3611_OPERATIONS_ON_LISTS](#3611_OPERATIONS_ON_LISTS)
* [3612_OPERATIONS_ON_LISTS_SLICES_1](#3612_OPERATIONS_ON_LISTS_SLICES_1)
* [3613_OPERATIONS_ON_LISTS_SLICES_2](#3613_OPERATIONS_ON_LISTS_SLICES_2)
* [3614_OPERATIONS_ON_LISTS_SLICES_3](#3614_OPERATIONS_ON_LISTS_SLICES_3)
* [3615_OPERATIONS_ON_LISTS_SLICES_DEL](#3615_OPERATIONS_ON_LISTS_SLICES_DEL)
* [3616_OPERATIONS_ON_LISTS_SLICES_IN_NOTIN](#3616_OPERATIONS_ON_LISTS_SLICES_IN_NOTIN)
* [3617_LISTS_MORE_DETAILS_1](#3617_LISTS_MORE_DETAILS_1)
* [3618_LISTS_MORE_DETAILS_2](#3618_LISTS_MORE_DETAILS_2)
* [3619_OPERATING_WITH_LISTS_BASICS](#3619_OPERATING_WITH_LISTS_BASICS)
* [36110_SECTION_SUMMARY](#36110_SECTION_SUMMARY)

---

#### 3611_OPERATIONS_ON_LISTS

Now we want to show you one important, and very surprising, feature of lists, which strongly distinguishes them from ordinary variables.

We want you to memorize it - it may affect your future programs, and cause severe problems if forgotten or overlooked.

Take a look at the snippet in the editor.

The program:

- creates a one-element list named list_1;
- assigns it to a new list named list_2;
- changes the only element of list_1;
- prints out list_2.

The surprising part is the fact that the program will output: ```[2]```, not ```[1]```, which seems to be the obvious solution.


Lists (and many other complex Python entities) are stored in different ways than ordinary (scalar) variables.

You could say that:

- the name of an ordinary variable is the name of its content;
- the name of a list is the name of a memory location where the list is stored.

Read these two lines once more - the difference is essential for understanding what we are going to talk about next.

The assignment: ```list_2 = list_1``` copies the name of the array, not its contents. In effect, the two names (list_1 and list_2) identify the same location in the computer memory. Modifying one of them affects the other, and vice versa.

How do you cope with that?

```py
list_1 = [1]
list_2 = list_1
list_1[0] = 2
print(list_2)

>>>
[2]
>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3612_OPERATIONS_ON_LISTS_SLICES_1

Fortunately, the solution is at your fingertips - its name is the slice.
A slice is an element of Python syntax that allows you to make a brand new copy of a list, or parts of a list.
It actually copies the list's contents, not the list's name.
This is exactly what you need. Take a look at the snippet below:

```py
list_1 = [1]
list_2 = list_1[:]
list_1[0] = 2

print(list_1)
print(list_2)

>>>
[2]
[1]
>>>
```

Its output is ```[1]```.

This inconspicuous part of the code described as ```[:]``` is able to produce a brand new list.

One of the most general forms of the slice looks as follows:

```py
my_list[start:end]
```

As you can see, it resembles indexing, but the colon inside makes a big difference.

A slice of this form makes a new (target) list, taking elements from the source list - the elements of the indices from start to ```end - 1```.

Note: not to end but to ```end - 1```. An element with an index equal to end is the first element which does not take part in the slicing.

Using negative values for both start and end is possible (just like in indexing).

Take a look at the snippet:

```py
my_list = [10, 8, 6, 4, 2]
new_list = my_list[1:3]
print(new_list)

>>>
[8, 6]
>>>
```

The new_list list will have ```end - start``` (3 - 1 = 2) elements - the ones with indices equal to 1 and 2 (but not 3).

The snippet's output is: ```[8, 6]```

[^^^](#36_LIST_PROCESSING)

---

#### 3613_OPERATIONS_ON_LISTS_SLICES_2

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3614_OPERATIONS_ON_LISTS_SLICES_3

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3615_OPERATIONS_ON_LISTS_SLICES_DEL

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3616_OPERATIONS_ON_LISTS_SLICES_IN_NOTIN

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3617_LISTS_MORE_DETAILS_1

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3618_LISTS_MORE_DETAILS_2

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 3619_OPERATING_WITH_LISTS_BASICS

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---

#### 36110_SECTION_SUMMARY

```py

>>>

>>>
```

[^^^](#36_LIST_PROCESSING)

---