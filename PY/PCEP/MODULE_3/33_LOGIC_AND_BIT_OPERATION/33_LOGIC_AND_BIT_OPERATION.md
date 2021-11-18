
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

##### Logical values vs. single bits

Logical operators take their arguments as a whole regardless of how many bits they contain. The operators are aware only of the value: zero (when all the bits are reset) means False; not zero (when at least one bit is set) means True.

The result of their operations is one of these values: False or True. This means that this snippet will assign the value True to the j variable if i is not zero; otherwise, it will be False.

```py
i = 1
j = not not i
```

##### Bitwise operators

However, there are four operators that allow you to manipulate single bits of data. They are called bitwise operators.

They cover all the operations we mentioned before in the logical context, and one additional operator. This is the xor (as in exclusive or) operator, and is denoted as ^ (caret).

Here are all of them:

```
- & (ampersand) - bitwise conjunction;
- | (bar) - bitwise disjunction;
- ~ (tilde) - bitwise negation;
- ^ (caret) - bitwise exclusive or (xor).
```

Bitwise operations

| A |  B | and | or | A^B |
| --- | --- | --- | --- | --- |
| 0 | 0 |	0 |	0 |	0 |
| 0 |	1	| 0	| 1	| 1 |
| 1	| 0	| 0	| 1	| 1 |
| 1	| 1 |	1 |	1 |	0 |

| Argument	| ~ Argument |
| --- | --- |
| 0 |	1 |
| 1	| 0 |

Let's make it easier:

```
- & requires exactly two 1s to provide 1 as the result;
- | requires at least one 1 to provide 1 as the result;
- ^ requires exactly one 1 to provide 1 as the result.
```

Let us add an important remark: the arguments of these operators must be integers; we must not use floats here.

The difference in the operation of the logical and bit operators is important: the logical operators do not penetrate into the bit level of its argument. They're only interested in the final integer value.

Bitwise operators are stricter: they deal with every bit separately. If we assume that the integer variable occupies 64 bits (which is common in modern computer systems), you can imagine the bitwise operation as a 64-fold evaluation of the logical operator for each pair of bits of the arguments. This analogy is obviously imperfect, as in the real world all these 64 operations are performed at the same time (simultaneously).

[^^^](#33_LOGIC_AND_BIT_OPERATION)

---

#### 3313_LOGIC_AND_BIT_OPERATION

##### Logical vs. bit operations: continued

We'll now show you an example of the difference in operation between the logical and bit operations. Let's assume that the following assignments have been performed:

```py
i = 15
j = 22
```

If we assume that the integers are stored with 32 bits, the bitwise image of the two variables will be as follows:

```py
i: 00000000000000000000000000001111
j: 00000000000000000000000000010110
```

The assignment is given:

```py
log = i and j
```

We are dealing with a logical conjunction here. Let's trace the course of the calculations. Both variables i and j are not zeros, so will be deemed to represent True. Consulting the truth table for the and operator, we can see that the result will be True. No other operations are performed.

```py
log: True
```

Now the bitwise operation - here it is:

```py
bit = i & j
```

The & operator will operate with each pair of corresponding bits separately, producing the values of the relevant bits of the result. Therefore, the result will be as follows:

```py
i	00000000000000000000000000001111
j	00000000000000000000000000010110
bit = i & j	00000000000000000000000000000110
```

These bits correspond to the integer value of six.

Let's look at the negation operators now. First the logical one:

```py
logneg = not i
```

The logneg variable will be set to False - nothing more needs to be done.
The bitwise negation goes like this:

```py
bitneg = ~i
```

It may be a bit surprising: the bitneg variable value is -16. This may seem strange, but isn't at all. If you wish to learn more, you should check out the binary numeral system and the rules governing two's complement numbers.

```py
i	00000000000000000000000000001111
bitneg = ~i	11111111111111111111111111110000
```

Each of these two-argument operators can be used in abbreviated form. These are the examples of their equivalent notations:

```py
x = x & y	x &= y
x = x | y	x |= y
x = x ^ y	x ^= y
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
