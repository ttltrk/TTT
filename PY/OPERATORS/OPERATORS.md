
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### OPERATORS

---

```
```

---

* [BASICS](#BASICS)
* [EXPONENTIATION](#EXPONENTIATION)
* [MULTIPLICATION](#MULTIPLICATION)
* [DIVISION](#DIVISION)
* [](#)
* [](#)

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

```py

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

[^^^](#OPERATORS)

---
