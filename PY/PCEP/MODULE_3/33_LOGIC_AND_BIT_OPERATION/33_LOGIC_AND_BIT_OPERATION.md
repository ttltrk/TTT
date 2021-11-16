
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 33_LOGIC_AND_BIT_OPERATION

---

* [3311_AND_OR_NOT_1](#3311_AND_OR_NOT_1)
* [3312_AND_OR_NOT_2](#3312_AND_OR_NOT_2)
* [3313_LOGIC_AND_BIT_OPERATION](#3313_LOGIC_AND_BIT_OPERATION)
* [3314_BITWISE_OPERATORS](#3314_BITWISE_OPERATORS)
* [3315_BIT_SHIFTING](#3315_BIT_SHIFTING)
* [3316_SUMMARY](#3316_SUMMARY)

---

#### 3311_AND_OR_NOT_1

##### Computer logic

Have you noticed that the conditions we've used so far have been very simple, not to say, quite primitive? The conditions we use in real life are much more complex. Let's look at this sentence:

```
If we have some free time, and the weather is good, we will go for a walk.
```

We've used the conjunction and, which means that going for a walk depends on the simultaneous fulfilment of these two conditions. In the language of logic, such a connection of conditions is called a conjunction. And now another example:

```
If you are in the mall or I am in the mall, one of us will buy a gift for Mom.
```

The appearance of the word or means that the purchase depends on at least one of these conditions. In logic, such a compound is called a disjunction.

It's clear that Python must have operators to build conjunctions and disjunctions. Without them, the expressive power of the language would be substantially weakened. They're called logical operators.

##### and

One logical conjunction operator in Python is the word and. It's a binary operator with a priority that is lower than the one expressed by the comparison operators. It allows us to code complex conditions without the use of parentheses like this one:

```py
counter > 0 and value == 100
```

The result provided by the and operator can be determined on the basis of the truth table.
If we consider the conjunction of A and B, the set of possible values of arguments and corresponding values of the conjunction looks as follows:

| Argument A | Argument B | A and B |
| --- | --- | --- |
| False | False | False |
| False	| True	| False |
| True	| False	| False |
| True	| True	| True |

##### or

A disjunction operator is the word or. It's a binary operator with a lower priority than and (just like + compared to *). Its truth table is as follows:

| Argument A	| Argument B	| A or B |
| --- | --- | --- |
| False |	False	| False |
| False	| True	| True |
| True	| False	| True |
| True	| True	| True |

##### not

In addition, there's another operator that can be applied for constructing conditions. It's a unary operator performing a logical negation. Its operation is simple: it turns truth into falsehood and falsehood into truth.

This operator is written as the word not, and its priority is very high: the same as the unary + and -. Its truth table is simple:

| Argument	| not Argument |
| --- | --- |
| False	| True |
| True |	False |

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3312_AND_OR_NOT_2

##### Logical expressions

Let's create a variable named var and assign 1 to it. The following conditions are pairwise equivalent:

```py
var = 1

# Example 1:
print(var > 0)
print(not (var <= 0))


# Example 2:
print(var != 0)
print(not (var == 0))

>>>
True
True
True
True
>>>
```

You may be familiar with De Morgan's laws. They say that:
The negation of a conjunction is the disjunction of the negations.
The negation of a disjunction is the conjunction of the negations.

Let's write the same thing using Python:

```py
not (p and q) == (not p) or (not q)
not (p or q) == (not p) and (not q)
```

Note how the parentheses have been used to code the expressions - we put them there to improve readability.

We should add that none of these two-argument operators can be used in the abbreviated form known as op=. This exception is worth remembering.

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3313_LOGIC_AND_BIT_OPERATION

```

```

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3314_BITWISE_OPERATORS

```

```

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3315_BIT_SHIFTING

```

```

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3316_SUMMARY

```

```

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---
