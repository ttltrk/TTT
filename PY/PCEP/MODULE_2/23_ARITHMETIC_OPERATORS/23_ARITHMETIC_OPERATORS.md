
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_2](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_2/MODULE_2.md)

---

#### 23_ARITHMETIC_OPERATORS

---

* [2311_DATA_MANIPULATION_1](#2311_DATA_MANIPULATION_1)
* [2312_DATA_MANIPULATION_2](#2312_DATA_MANIPULATION_2)
* [2313_DATA_MANIPULATION_3](#2313_DATA_MANIPULATION_3)
* [2314_DATA_MANIPULATION_4](#2314_DATA_MANIPULATION_4)
* [2315_DATA_MANIPULATION_5](#2315_DATA_MANIPULATION_5)
* [2316_DATA_MANIPULATION_6](#2316_DATA_MANIPULATION_6)
* [2317_DATA_MANIPULATION_7](#2317_DATA_MANIPULATION_7)
* [2318_DATA_MANIPULATION_8](#2318_DATA_MANIPULATION_8)
* [2319_DATA_MANIPULATION_9](#2319_DATA_MANIPULATION_9)
* [23110_DATA_MANIPULATION_10](#23110_DATA_MANIPULATION_10)
---

#### 2311_DATA_MANIPULATION_1

##### Python as a calculator

Now, we're going to show you a completely new side of the ```print()``` function. You already know that the function is able to show you the values of the literals passed to it by arguments.
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

##### Basic operators

An operator is a symbol of the programming language, which is able to operate on the values.
For example, just as in arithmetic, the ```+``` (plus) sign is the operator which is able to add two numbers, giving the result of the addition.
Not all Python operators are as obvious as the plus sign, though, so let's go through some of the operators available in Python, and we'll explain which rules govern their use, and how to interpret the operations they perform.
We'll begin with the operators which are associated with the most widely recognizable arithmetic operations:

```py
+, -, *, /, //, %, **
```

The order of their appearance is not accidental. We'll talk more about it once we've gone through them all.
Remember: Data and operators when connected together form expressions. The simplest expression is a literal itself.

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2312_DATA_MANIPULATION_2

##### Arithmetic operators: exponentiation

A ```**``` (double asterisk) sign is an exponentiation (power) operator. Its left argument is the base, its right, the exponent.
Classical mathematics prefers notation with superscripts, just like this: 23. Pure text editors don't accept that, so Python uses ```**``` instead, e.g., ```2 ** 3```.
Take a look at our examples in the editor window.

Note: we've surrounded the double asterisks with spaces in our examples. It's not compulsory, but it improves the readability of the code.
The examples show a very important feature of virtually all Python numerical operators.
Run the code and look carefully at the results it produces. Can you see any regularity here?

Remember: It's possible to formulate the following rules based on this result:

- when both ```**``` arguments are integers, the result is an integer, too;
- when at least one ** argument is a float, the result is a float, too.

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

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2313_DATA_MANIPULATION_3

##### Arithmetic operators: multiplication

An ```*``` (asterisk) sign is a multiplication operator.
Run the code below and check if our integer vs. float rule is still working.

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

##### Arithmetic operators: division

A ```/``` (slash) sign is a divisional operator.
The value in front of the slash is a dividend, the value behind the slash, a divisor.
Run the code below and analyze the results.

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

You should see that there is an exception to the rule.
The result produced by the division operator is always a float, regardless of whether or not the result seems to be a float at first glance: ```1 / 2```, or if it looks like a pure integer: ```2 / 1```.
Is this a problem? Yes, it is. It happens sometimes that you really need a division that provides an integer value, not a float.

Fortunately, Python can help you with that.

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2314_DATA_MANIPULATION_4

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2315_DATA_MANIPULATION_5

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2316_DATA_MANIPULATION_6

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2317_DATA_MANIPULATION_7

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2318_DATA_MANIPULATION_8

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 2319_DATA_MANIPULATION_9

[^^^](#23_ARITHMETIC_OPERATORS)

---

#### 23110_DATA_MANIPULATION_10

[^^^](#23_ARITHMETIC_OPERATORS)

---
