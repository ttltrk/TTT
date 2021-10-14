
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### OPERATORS

---

```
```

---
* [PY_OPERATORS](#PY_OPERATORS)
* [PY_ARITMETIC_OPERATORS](#PY_ARITMETIC_OPERATORS)
* [PY_ASSIGNMENT_OPERATORS](#PY_ASSIGNMENT_OPERATORS)
* [PY_COMPARISON_OPERATORS](#PY_COMPARISON_OPERATORS)
* [PY_LOGICAL_OPERATORS](#PY_LOGICAL_OPERATORS)
* [PY_IDENTITY_OPERATORS](#PY_IDENTITY_OPERATORS)
* [PY_MEMBERSHIP_OPERATORS](#PY_MEMBERSHIP_OPERATORS)
* [PY_BITWISE_OPERATORS](#PY_BITWISE_OPERATORS)
* [BASICS](#BASICS)
* [EXPONENTIATION](#EXPONENTIATION)
* [MULTIPLICATION](#MULTIPLICATION)
* [DIVISION](#DIVISION)
* [INT_DIVISION](#INT_DIVISION)
* [MODULO](#MODULO)
* [ADDITION](#ADDITION)
* [SUBTRACTION](#SUBTRACTION)
* [OPERATORS_PRIOS](#OPERATORS_PRIOS)
* [OPERATORS_BINDINGS](#OPERATORS_BINDINGS)
* [LIST_OF_PRIOS](#LIST_OF_PRIOS)
* [OPERATORS_AND_PARENTHESES](#OPERATORS_AND_PARENTHESES)
* [EQUALITY_OPERATOR](#EQUALITY_OPERATOR)
* [NOT_EQUAL_TO_OPERATOR](#NOT_EQUAL_TO_OPERATOR)
* [GREATER_THAN](#GREATHER_THAN)
* [GREATER_THAN_OR_EQUAL_TO](#GREATER_THAN_OR_EQUAL_TO)
* [LESS_THAN_OR_EQUAL_TO](#LESS_THAN_OR_EQUAL_TO)

---

#### PY_OPERATORS

```
Operators are used to perform operations on variables and values.
```

```
Python divides the operators in the following groups:

Arithmetic operators
Assignment operators
Comparison operators
Logical operators
Identity operators
Membership operators
Bitwise operators
```

[^^^](#OPERATORS)

---

#### PY_ARITMETIC_OPERATORS

```
Arithmetic operators are used with numeric values to perform common mathematical operations.
```

| Operator      | Name |Example|
| ----------- | ----------- |-----------|
| +	| Addition	| x + y	|
| -	| Subtraction |	x - y		|
| *	| Multiplication |	x * y		|
| /	| Division	| x / y		|
| %	 | Modulus	| x % y		|
| ** |	Exponentiation	| x ** y		|
| // |	Floor division	| x // y	|

[^^^](#OPERATORS)

---

#### PY_ASSIGNMENT_OPERATORS

```
Assignment operators are used to assign values to variables.
```

| Operator      | Name |Example|
| ----------- | ----------- |-----------|
| =	| x = 5	| x = 5	|
| +=	| x += 3	| x = x + 3 |
| -=	| x -= 3	| x = x - 3	|
| *=	| x *= 3	| x = x * 3	|
| /=	| x /= 3	| x = x / 3	|
| %=	| x %= 3	| x = x % 3	|
| //=	| x //= 3	| x = x // 3 |
| **=	| x **= 3	| x = x ** 3 |
| &=	x | &= 3	| x = x & 3	|
|  |=	x  |  |= 3 	|  x = x | 3	|
| ^=	x | ^= 3	| x = x ^ 3	|
| >>= |	x >>= 3	| x = x >> 3 |
| <<= |	x <<= 3	| x = x << 3 |

[^^^](#OPERATORS)

---

#### PY_COMPARISON_OPERATORS

```
Comparison operators are used to compare two values.
```

| Operator      | Name |Example|
| ----------- | ----------- |-----------|
| == |	Equal | 	x == y	|
| != |	Not equal | 	x != y |
| >	 | Greater than	| x > y	 |
| <	 | Less than	| x < y	|
| >=	| Greater than or equal to	| x >= y |
| <=	| Less than or equal to	| x <= y |

[^^^](#OPERATORS)

---

#### PY_LOGICAL_OPERATORS

[^^^](#OPERATORS)

---

#### PY_IDENTITY_OPERATORS

[^^^](#OPERATORS)

---

#### PY_MEMBERSHIP_OPERATORS

[^^^](#OPERATORS)

---

#### PY_BITWISE_OPERATORS

[^^^](#OPERATORS)

---

#### BASICS

Now, we're going to show you a completely new side of the print() function. You already know that the function is able to show you the values of the literals passed to it by arguments.

In fact, it can do something more. Take a look at the snippet:

```py
print(2+2)

>>>
4
>>>
```

Retype the code in the editor and run it. Can you guess the output?

You should see the number four. Feel free to experiment with other operators.

Without taking this too seriously, you've just discovered that Python can be used as a calculator. Not a very handy one, and definitely not a pocket one, but a calculator nonetheless.

Taking it more seriously, we are now entering the province of operators and expressions.

An operator is a symbol of the programming language, which is able to operate on the values.

For example, just as in arithmetic, the + (plus) sign is the operator which is able to add two numbers, giving the result of the addition.

Not all Python operators are as obvious as the plus sign, though, so let's go through some of the operators available in Python, and we'll explain which rules govern their use, and how to interpret the operations they perform.

We'll begin with the operators which are associated with the most widely recognizable arithmetic operations:

```
+
-
*
/
//
%
**
```

[^^^](#OPERATORS)

---

#### EXPONENTIATION

A ```**``` (double asterisk) sign is an exponentiation (power) operator. Its left argument is the base, its right, the exponent.

Classical mathematics prefers notation with superscripts, just like this: 23. Pure text editors don't accept that, so Python uses ```**``` instead, e.g.,
```2 ** 3```.


Note: we've surrounded the double asterisks with spaces in our examples. It's not compulsory, but it improves the readability of the code.

The examples show a very important feature of virtually all Python numerical operators.

Run the code and look carefully at the results it produces. Can you see any regularity here?


Remember: It's possible to formulate the following rules based on this result:

- when both ```**``` arguments are integers, the result is an integer, too;
- when at least one ```**``` argument is a float, the result is a float, too.

This is an important distinction to remember.

```py
print(2 ** 3)
print(2 ** 3.)
print(2. ** 3)
print(2. ** 3.)

>>>
8
8.0
8.0
8.0
>>>
```

[^^^](#OPERATORS)

---

#### MULTIPLICATION

An ```*``` (asterisk) sign is a multiplication operator.

```py
print(2 * 3)
print(2 * 3.)
print(2. * 3)
print(2. * 3.)

>>>
6
6.0
6.0
6.0
>>>
```

[^^^](#OPERATORS)

---

#### DIVISION

A ```/``` (slash) sign is a divisional operator.

The value in front of the slash is a dividend, the value behind the slash, a divisor.

```py
print(6 / 3)
print(6 / 3.)
print(6. / 3)
print(6. / 3.)

>>>
2.0
2.0
2.0
2.0
>>>
```

The result produced by the division operator is always a float, regardless of whether or not the result seems to be a float at first glance: ```1 / 2```,
or if it looks like a pure integer: ```2 / 1```.

Is this a problem? Yes, it is. It happens sometimes that you really need a division that provides an integer value, not a float.

Fortunately, Python can help you with that.

[^^^](#OPERATORS)

---

#### INT_DIVISION

A ```//``` (double slash) sign is an integer divisional operator. It differs from the standard ```/``` operator in two details:

- its result lacks the fractional part - it's absent (for integers), or is always equal to zero (for floats); this means that the results are always rounded;
- it conforms to the integer vs. float rule.

```py
print(6 // 3)
print(6 // 3.)
print(6. // 3)
print(6. // 3.)

>>>
2
2.0
2.0
2.0
>>>
```

As you can see, integer by integer division gives an integer result. All other cases produce floats.

```py
print(6 // 4)
print(6. // 4)

>>>
1
1.0
>>>
```

magine that we used ```/``` instead of ```//``` - could you predict the results?
Yes, it would be 1.5 in both cases. That's clear.

```py
print(6 / 4)
print(6. / 4)

>>>
1.5
1.5
>>>
```

The result of integer division is always rounded to the nearest integer value that is less than the real (not rounded) result.
This is very important: rounding always goes to the lesser integer.

```py
print(-6 // 4)
print(6. // -4)

>>>
-2
-2.0
>>>
```

The result is two negative twos. The real (not rounded) result is -1.5 in both cases. However, the results are the subjects of rounding. The rounding goes toward the lesser integer value, and the lesser integer value is -2, hence: -2 and -2.0.

```py
print(-6 / 4)
print(6. / -4)

>>>
-1.5
-1.5
>>>
```

Integer division can also be called floor division. You will definitely come across this term in the future.

[^^^](#OPERATORS)

---

#### MODULO

The next operator is quite a peculiar one, because it has no equivalent among traditional arithmetic operators.
Its graphical representation in Python is the ```%``` (percent) sign, which may look a bit confusing.
Try to think of it as of a slash (division operator) accompanied by two funny little circles.
The result of the operator is a remainder left after the integer division.
In other words, it's the value left over after dividing one value by another to produce an integer quotient.
Note: the operator is sometimes called modulo in other programming languages.

```py
print(14 % 4)

>>>
2
>>>
```

```
14 // 4 gives 3 → this is the integer quotient;
3 * 4 gives 12 → as a result of quotient and divisor multiplication;
14 - 12 gives 2 → this is the remainder.
```

```py
print(12 % 4.5)

>>>
3.0
>>>
```

As you probably know, division by zero doesn't work.

Do not try to:

perform a division by zero;
perform an integer division by zero;
find a remainder of a division by zero.

[^^^](#OPERATORS)

---

#### ADDITION

The addition operator is the ```+``` (plus) sign, which is fully in line with mathematical standards.

```py
print(-4 + 4)
print(-4. + 8)

>>>
0
4.0
>>>
```

[^^^](#OPERATORS)

---

#### SUBTRACTION

The subtraction operator is obviously the ```-``` (minus) sign, although you should note that this operator also has another meaning - it can change the sign of a number.
This is a great opportunity to present a very important distinction between unary and binary operators.
In subtracting applications, the minus operator expects two arguments: the left (a minuend in arithmetical terms) and right (a subtrahend).
For this reason, the subtraction operator is considered to be one of the binary operators, just like the addition, multiplication and division operators.

```py
print(-4 - 4)
print(4. - 8)
print(-1.1)

>>>
-8
-4.0
-1.1
>>>
```

[^^^](#OPERATORS)

---

#### OPERATORS_PRIOS

So far, we've treated each operator as if it had no connection with the others. Obviously, such an ideal and simple situation is a rarity in real programming.

Also, you will very often find more than one operator in one expression, and then this presumption is no longer so obvious.

Consider the following expression:

```py
print(2 + 3 * 5)

>>>
17
>>>
```

You probably remember from school that multiplications precede additions.
You surely remember that you should first multiply 3 by 5 and, keeping the 15 in your memory, then add it to 2, thus getting the result of 17.
The phenomenon that causes some operators to act before others is known as the hierarchy of priorities.
Python precisely defines the priorities of all operators, and assumes that operators of a larger (higher) priority perform their operations before the operators of a lower priority.
So, if you know that ```*``` has a higher priority than ```+```, the computation of the final result should be obvious.

[^^^](#OPERATORS)

---

#### OPERATORS_BINDINGS

The binding of the operator determines the order of computations performed by some operators with equal priority, put side by side in one expression.
Most of Python's operators have left-sided binding, which means that the calculation of the expression is conducted from left to right.

```py
print(9 % 6 % 2)

>>>
1
>>>
```

There are two possible ways of evaluating this expression:

```
from left to right: first 9 % 6 gives 3, and then 3 % 2 gives 1;
from right to left: first 6 % 2 gives 0, and then 9 % 0 causes a fatal error.
```

Run the example and see what you get.
The result should be 1. This operator has left-sided binding. But there's one interesting exception.

Repeat the experiment, but now with exponentiation.

```py
print(2 ** 2 ** 3)

>>>
256
>>>
```

The two possible results are:

```
2 ** 2 → 4; 4 ** 3 → 64
2 ** 3 → 8; 2 ** 8 → 256
```

The result clearly shows that the exponentiation operator uses right-sided binding.

[^^^](#OPERATORS)

---

#### LIST_OF_PRIOS

Since you're new to Python operators, we don't want to present the complete list of operator priorities right now.
Instead, we'll show you its truncated form, and we'll expand it consistently as we introduce new operators.

```
1	+, -	       unary
2	**
3	*, /, //, %
4	+, -	       binary
```

```py
print(2 * 3 % 5)

>>>
1
>>>
```

[^^^](#OPERATORS)

---

#### OPERATORS_AND_PARENTHESES

Of course, you're always allowed to use parentheses, which can change the natural order of a calculation.
In accordance with the arithmetic rules, subexpressions in parentheses are always calculated first.
You can use as many parentheses as you need, and they're often used to improve the readability of an expression, even if they don't change the order of the operations.

```py
print((5 * ((25 % 13) + 100) / (2 * 13)) // 2)

>>>
10.0
>>>
```

[^^^](#OPERATORS)

---

#### EQUALITY_OPERATOR

A computer executes the program and provides the answers. The program must be able to react according to the received answers.
Fortunately, computers know only two kinds of answers:

```
yes, this is true;
no, this is false.
```

You will never get a response like Let me think...., I don't know, or Probably yes, but I don't know for sure.
To ask questions, Python uses a set of very special operators. Let's go through them one after another, illustrating their effects on some simple examples.

Question: are two values equal?
To ask this question, you use the ```==``` (equal equal) operator.
Don't forget this important distinction:

```
= is an assignment operator, e.g., a = b assigns a with the value of b;
== is the question are these values equal?; a == b compares a and b.
```

It is a binary operator with left-sided binding. It needs two arguments and checks if they are equal.


```py
2==2
2==2.
1==2

>>>
True
True
False
>>>
```

The ```==``` (equal to) operator compares the values of two operands. If they are equal, the result of the comparison is True. If they are not equal, the result of the comparison is False.

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

[^^^](#OPERATORS)

---

#### NOT_EQUAL_TO_OPERATOR

The ```!=``` (not equal to) operator compares the values of two operands, too. Here is the difference: if they are equal, the result of the comparison is False. If they are not equal, the result of the comparison is True.

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

[^^^](#OPERATORS)

---

#### GREATER_THAN

You can also ask a comparison question using the ```>``` (greater than) operator.
If you want to know if there are more black sheep than white ones, you can write it as follows:

```py
black_sheep = 10
white_sheep = 5

black_sheep > white_sheep  # Greater than

>>>
True
>>>
```

True confirms it; False denies it.

[^^^](#OPERATORS)

---

#### GREATER_THAN_OR_EQUAL_TO

The greater than operator has another special, non-strict variant, but it's denoted differently than in classical arithmetic notation: ```>=``` (greater than or equal to).

There are two subsequent signs, not one.

Both of these operators (strict and non-strict), as well as the two others discussed in the next section, are binary operators with left-sided binding, and their priority is greater than that shown by ```==``` and ```!=```.

If we want to find out whether or not we have to wear a warm hat, we ask the following question:

```py
black_sheep = 10
white_sheep = 10

print(black_sheep >= white_sheep)  

black_sheep = 10
white_sheep = 9

print(black_sheep >= white_sheep)  

black_sheep = 10
white_sheep = 11

print(black_sheep >= white_sheep)  

>>>
True
True
False
>>>
```

[^^^](#OPERATORS)

---

#### LESS_THAN_OR_EQUAL_TO

As you've probably already guessed, the operators used in this case are: the ```<``` (less than) operator and its non-strict sibling: ```<=``` (less than or equal to).

```py
black_sheep = 10
white_sheep = 10

print(black_sheep <= white_sheep)  

black_sheep = 10
white_sheep = 9

print(black_sheep <= white_sheep)  

black_sheep = 10
white_sheep = 11

print(black_sheep <= white_sheep)

>>>
True
False
True
>>>
```

[^^^](#OPERATORS)

---
