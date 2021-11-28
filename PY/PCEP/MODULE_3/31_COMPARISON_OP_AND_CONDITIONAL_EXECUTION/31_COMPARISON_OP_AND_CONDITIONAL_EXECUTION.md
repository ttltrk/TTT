
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION

---

* [3111_MAKING_DECISIONS_IN_PY_1](#3111_MAKING_DECISIONS_IN_PY_1)
* [3112_MAKING_DECISIONS_IN_PY_2](#3112_MAKING_DECISIONS_IN_PY_2)
* [3113_MAKING_DECISIONS_IN_PY_3](#3113_MAKING_DECISIONS_IN_PY_3)
* [3114_LAB_Q_AND_A](#3114_LAB_Q_AND_A)
* [3115_MAKING_DECISIONS_IN_PY_4](#3115_MAKING_DECISIONS_IN_PY_4)
* [3116_MAKING_DECISIONS_IN_PY_5](#3116_MAKING_DECISIONS_IN_PY_5)
* [3117_MAKING_DECISIONS_IN_PY_6](#3117_MAKING_DECISIONS_IN_PY_6)
* [3118_MAKING_DECISIONS_IN_PY_7](#3118_MAKING_DECISIONS_IN_PY_7)
* [3119_MAKING_DECISIONS_IN_PY_8](#3119_MAKING_DECISIONS_IN_PY_8)
* [31110_EXECUTIONS](#31110_EXECUTIONS)
* [31111_IF_ELSE](#31111_IF_ELSE)
* [31112_IF_ELIF_ELSE](#31112_IF_ELIF_ELSE)
* [31113_SECTION_SUMMARY_1](#31113_SECTION_SUMMARY_1)
* [31114_SECTION_SUMMARY_2](#31114_SECTION_SUMMARY_2)

---

#### 3111_MAKING_DECISIONS_IN_PY_1

- Questions and answers

A programmer writes a program and the program asks questions.

A computer executes the program and provides the answers. The program must be able to react according to the received answers.

Fortunately, computers know only two kinds of answers:

- yes, this is true;
- no, this is false.

You will never get a response like Let me think...., I don't know, or Probably yes, but I don't know for sure.

To ask questions, Python uses a set of very special operators. Let's go through them one after another, illustrating their effects on some simple examples.

- Comparison: equality operator

Question: are two values equal?

To ask this question, you use the ```==``` (equal equal) operator.

Don't forget this important distinction:

```
- = is an assignment operator, e.g., a = b assigns a with the value of b;
- == is the question are these values equal?; a == b compares a and b.
```

It is a binary operator with left-sided binding. It needs two arguments and checks if they are equal.

```py
2 == 2
2 == 2.
1 == 2

>>>
True
True
False
>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3112_MAKING_DECISIONS_IN_PY_2

##### Equality: the equal to operator (==)

The == (equal to) operator compares the values of two operands. If they are equal, the result of the comparison is True. If they are not equal, the result of the comparison is False.
Look at the equality comparison below - what is the result of this operation?

```py
var == 0
```

Note that we cannot find the answer if we do not know what value is currently stored in the variable var.

If the variable has been changed many times during the execution of your program, or its initial value is entered from the console, the answer to this question can be given only by Python and only at runtime.

Now imagine a programmer who suffers from insomnia, and has to count black and white sheep separately as long as there are exactly twice as many black sheep as white ones.

The question will be as follows:

```py
black_sheep == 2 * white_sheep
```

Due to the low priority of the == operator, the question shall be treated as equivalent to this one:

```py
black_sheep == (2 * white_sheep)
```

So, let's practice your understanding of the == operator now - can you guess the output of the code below?

```py
var = 0  # Assigning 0 to var
print(var == 0)

var = 1  # Assigning 1 to var
print(var == 0)

>>>
True
False
>>>
```

Run the code and check if you were right.

##### Inequality: the not equal to operator (!=)

The != (not equal to) operator compares the values of two operands, too. Here is the difference: if they are equal, the result of the comparison is False. If they are not equal, the result of the comparison is True.

Now take a look at the inequality comparison below - can you guess the result of this operation?

```py
var = 0  # Assigning 0 to var
print(var != 0)

var = 1  # Assigning 1 to var
print(var != 0)

>>>
False
True
>>>
```

Run the code and check if you were right.

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3113_MAKING_DECISIONS_IN_PY_3

##### Comparison operators: greater than

You can also ask a comparison question using the > (greater than) operator.

If you want to know if there are more black sheep than white ones, you can write it as follows:

```py
black_sheep > white_sheep  # Greater than
```

True confirms it; False denies it.

##### Comparison operators: greater than or equal to

The greater than operator has another special, non-strict variant, but it's denoted differently than in classical arithmetic notation: >= (greater than or equal to).

There are two subsequent signs, not one.

Both of these operators (strict and non-strict), as well as the two others discussed in the next section, are binary operators with left-sided binding, and their priority is greater than that shown by == and !=.

If we want to find out whether or not we have to wear a warm hat, we ask the following question:

```py
centigrade_outside ≥ 0.0  # Greater than or equal to
```

##### Comparison operators: less than or equal to

As you've probably already guessed, the operators used in this case are: the < (less than) operator and its non-strict sibling: <= (less than or equal to).

Look at this simple example:

```py
current_velocity_mph < 85  # Less than
current_velocity_mph ≤ 85  # Less than or equal to
```

We're going to check if there's a risk of being fined by the highway police (the first question is strict, the second isn't).



[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3114_LAB_Q_AND_A

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3115_MAKING_DECISIONS_IN_PY_4

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3116_MAKING_DECISIONS_IN_PY_5

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3117_MAKING_DECISIONS_IN_PY_6

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3118_MAKING_DECISIONS_IN_PY_7

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 3119_MAKING_DECISIONS_IN_PY_8

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 31110_EXECUTIONS

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 31111_IF_ELSE

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 31112_IF_ELIF_ELSE

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 31113_SECTION_SUMMARY_1

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---

#### 31114_SECTION_SUMMARY_2

```py

>>>

>>>
```

[^^^](#31_COMPARISON_OP_AND_CONDITIONAL_EXECUTION)

---
