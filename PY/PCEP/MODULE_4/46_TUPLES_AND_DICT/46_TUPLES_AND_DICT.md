
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 46_TUPLES_AND_DICT

---

* [4611_TUP_AND_DIC](#4611_TUP_AND_DIC)
* [4612_TUP_AND_DIC](#4612_TUP_AND_DIC)
* [4613_TUP_AND_DIC](#4613_TUP_AND_DIC)
* [4614_TUP_AND_DIC](#4614_TUP_AND_DIC)
* [4615_TUP_AND_DIC](#4615_TUP_AND_DIC)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### 4611_TUP_AND_DIC

##### Sequence types and mutability

Before we start talking about tuples and dictionaries, we have to introduce two important concepts: sequence types and mutability.

A sequence type is a type of data in Python which is able to store more than one value (or less than one, as a sequence may be empty), and these values can be sequentially (hence the name) browsed, element by element.

As the for loop is a tool especially designed to iterate through sequences, we can express the definition as: a sequence is data which can be scanned by the for loop.

You've encountered one Python sequence so far - the list. The list is a classic example of a Python sequence, although there are some other sequences worth mentioning, and we're going to present them to you now.

The second notion - mutability - is a property of any of Python's data that describes its readiness to be freely changed during program execution. There are two kinds of Python data: mutable and immutable.

Mutable data can be freely updated at any time - we call such an operation in situ.

In situ is a Latin phrase that translates as literally in position. For example, the following instruction modifies the data in situ:

```py
list.append(1)
```

Immutable data cannot be modified in this way.

Imagine that a list can only be assigned and read over. You would be able neither to append an element to it, nor remove any element from it. This means that appending an element to the end of the list would require the recreation of the list from scratch.

You would have to build a completely new list, consisting of the all elements of the already existing list, plus the new element.

The data type we want to tell you about now is a tuple. A tuple is an immutable sequence type. It can behave like a list, but it mustn't be modified in situ.

##### What is a tuple?

The first and the clearest distinction between lists and tuples is the syntax used to create them - tuples prefer to use parenthesis, whereas lists like to see brackets, although it's also possible to create a tuple just from a set of values separated by commas.

Look at the example:

```py
tuple_1 = (1, 2, 4, 8)
tuple_2 = 1., .5, .25, .125
```

There are two tuples, both containing four elements.

Let's print them:

```py
tuple_1 = (1, 2, 4, 8)
tuple_2 = 1., .5, .25, .125

print(tuple_1)
print(tuple_2)
```

This is what you should see in the console:

```py
(1, 2, 4, 8)
(1.0, 0.5, 0.25, 0.125)
```

Note: each tuple element may be of a different type (floating-point, integer, or any other not-as-yet-introduced kind of data).

##### How to create a tuple?

It is possible to create an empty tuple - parentheses are required then:

```py
empty_tuple = ()
```

If you want to create a one-element tuple, you have to take into consideration the fact that, due to syntax reasons (a tuple has to be distinguishable from an ordinary, single value), you must end the value with a comma:

```py
one_element_tuple_1 = (1, )
one_element_tuple_2 = 1.,
```

Removing the commas won't spoil the program in any syntactical sense, but you will instead get two single variables, not tuples.

[^^^](#46_TUPLES_AND_DICT)

---

#### 4612_TUP_AND_DIC

##### How to use a tuple?

If you want to get the elements of a tuple in order to read them over, you can use the same conventions to which you're accustomed while using lists.

Take a look at the code in the editor.

The program should produce the following output - run it and check:

```py
1
1000
(10, 100, 1000)
(1, 10)
1
10
100
1000
```

The similarities may be misleading - don't try to modify a tuple's contents! It's not a list!

All of these instructions (except the topmost one) will cause a runtime error:

```py
my_tuple = (1, 10, 100, 1000)

my_tuple.append(10000)
del my_tuple[0]
my_tuple[1] = -10
```

This is the message that Python will give you in the console window:

AttributeError: 'tuple' object has no attribute 'append'

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---
