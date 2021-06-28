
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### LITERALS

---

* [BASICS](#BASICS)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### BASICS

Now that you have a little knowledge of some of the powerful features offered by the print() function, it's time to learn about some new issues, and one important new term - the literal.

A literal is data whose values are determined by the literal itself.

As this is a difficult concept to understand, a good example may be helpful.

Take a look at the following set of digits:

```
123
```

Can you guess what value it represents? Of course you can - it's one hundred twenty three.

But what about this:

```
c
```

Does it represent any value? Maybe. It can be the symbol of the speed of light, for example. It also can be the constant of integration. Or even the length of a hypotenuse in the sense of a Pythagorean theorem. There are many possibilities.

You cannot choose the right one without some additional knowledge.

And this is the clue: 123 is a literal, and c is not.

You use literals to encode data and to put them into your code. We're now going to show you some conventions you have to obey when using Python.

The first line looks familiar. The second seems to be erroneous due to the visible lack of quotes.

Try to run it.

If everything went okay, you should now see two identical lines.

What happened? What does it mean?

Through this example, you encounter two different types of literals:

a string, which you already know,
and an integer number, something completely new.
The print() function presents them in exactly the same way - this example is obvious, as their human-readable representation is also the same. Internally, in the computer's memory, these two values are stored in completely different ways - the string exists as just a string - a series of letters.

The number is converted into machine representation (a set of bits). The print() function is able to show them both in a form readable to humans.

We're now going to be spending some time discussing numeric literals and their internal life.

```py
a = "2"
b = 2

print(a)
print(b)

print(type(a))
print(type(b))

>>>
2
2
<class 'str'>
<class 'int'>
>>>
```

[^^^](#LITERALS)

---
