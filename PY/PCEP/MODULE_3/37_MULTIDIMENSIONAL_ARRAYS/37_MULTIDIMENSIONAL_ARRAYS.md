
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

- Lists in lists

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

The snippet creates an eight-element array containing the first eight powers of two (1, 2, 4, 8, 16, 32, 64, 128)

Example #3:

```py
odds = [x for x in squares if x % 2 != 0 ]
```

The snippet makes a list with only the odd elements of the squares list.

```py
squares = [x ** 2 for x in range(10)]
print(squares)

odds = [x for x in squares if x % 2 != 0]
print(odds)

>>>
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
[1, 9, 25, 49, 81]
>>>
```

[^^^](#37_MULTIDIMENSIONAL_ARRAYS)

---

#### 3712_LISTS_IN_ADVANCED_APPS_ARR_1

- Lists in lists: two-dimensional arrays

Let's also assume that a predefined symbol named EMPTY designates an empty field on the chessboard.

So, if we want to create a list of lists representing the whole chessboard, it may be done in the following way:

```py
board = []

for i in range(8):
    row = [EMPTY for i in range(8)]
    board.append(row)
```

Note:

- the inner part of the loop creates a row consisting of eight elements (each of them equal to EMPTY) and appends it to the board list;
- the outer part repeats it eight times;
- in total, the board list consists of 64 elements (all equal to EMPTY)

This model perfectly mimics the real chessboard, which is in fact an eight-element list of elements, all being single rows. Let's summarize our observations:

- the elements of the rows are fields, eight of them per row;
- the elements of the chessboard are rows, eight of them per chessboard.
- The board variable is now a two-dimensional array. It's also called, by analogy to algebraic terms, a matrix.

As list comprehensions can be nested, we can shorten the board creation in the following way:

```py
board = [[EMPTY for i in range(8)] for j in range(8)]
```

The inner part creates a row, and the outer part builds a list of rows.

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
