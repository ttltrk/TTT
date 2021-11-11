
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 37_MULTIDIMENSIONAL_ARRAYS

---

* [3711_LISTS_IN_ADVANCED_APPS](#3711_LISTS_IN_ADVANCED_APPS)
* [3712_LISTS_IN_ADVANCED_APPS_ARR_1](#3712_LISTS_IN_ADVANCED_APPS_ARR_1)
* [3713_LISTS_IN_ADVANCED_APPS_ARR_2](#3713_LISTS_IN_ADVANCED_APPS_ARR_2)
* [3714_LISTS_IN_ADVANCED_APPS_ARR_3](#3714_LISTS_IN_ADVANCED_APPS_ARR_3)
* [3715_LISTS_IN_ADVANCED_APPS_ARR_4](#3715_LISTS_IN_ADVANCED_APPS_ARR_4)
* [3716_SECTION_SUMMARY](#3716_SECTION_SUMMARY)
* [3717_MODULE_COMPLETION](#3717_MODULE_COMPLETION)

---

#### 3711_LISTS_IN_ADVANCED_APPS

Lists can consist of scalars (namely numbers) and elements of a much more complex
structure (you've already seen such examples as strings, booleans, or even other lists in the
previous Section Summary lessons). Let's have a closer look at the case where a list's elements are just lists.

We often find such arrays in our lives. Probably the best example of this is a chessboard.

A chessboard is composed of rows and columns. There are eight rows and eight columns.
Each column is marked with the letters A through H. Each line is marked with a number from one to eight.

The location of each field is identified by letter-digit pairs. Thus, we know
that the bottom left corner of the board (the one with the white rook) is A1, while the opposite corner is H8.

Let's assume that we're able to use the selected numbers to represent any chess piece.
We can also assume that every row on the chessboard is a list.

Look at the code below:

```py
row = []

for i in range(8):
    row.append(WHITE_PAWN)
```

It builds a list containing eight elements representing the second row of the chessboard - the one filled with pawns (assume that WHITE_PAWN is a predefined symbol representing a white pawn).

The same effect may be achieved by means of a list comprehension, the special syntax used by Python in order to fill massive lists.

A list comprehension is actually a list, but created on-the-fly during program execution, and is not described statically.

Take a look at the snippet:

```py
row = [WHITE_PAWN for i in range(8)]
```

The part of the code placed inside the brackets specifies:

- the data to be used to fill the list (WHITE_PAWN)
- the clause specifying how many times the data occurs inside the list ```(for i in range(8))```

Let us show you some other list comprehension examples:

Example #1:

```py
squares = [x ** 2 for x in range(10)]
```

The snippet produces a ten-element list filled with squares of ten integer numbers starting from zero (0, 1, 4, 9, 16, 25, 36, 49, 64, 81)

Example #2:

```py
twos = [2 ** i for i in range(8)]
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3712_LISTS_IN_ADVANCED_APPS_ARR_1

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3713_LISTS_IN_ADVANCED_APPS_ARR_2

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3714_LISTS_IN_ADVANCED_APPS_ARR_3

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3715_LISTS_IN_ADVANCED_APPS_ARR_4

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3716_SECTION_SUMMARY

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3717_MODULE_COMPLETION

```py

>>>

>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---
