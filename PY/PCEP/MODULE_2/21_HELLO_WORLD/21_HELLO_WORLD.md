
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_2](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_2/MODULE_2.md)

---

#### 21_HELLO_WORLD

---

* [2111_FIRST_PRG_1](#2111_FIRST_PRG_1)
* [2112_FIRST_PRG_2](#2112_FIRST_PRG_2)
* [2113_FIRST_PRG_3](#2113_FIRST_PRG_3)
* [2114_FIRST_PRG_4](#2114_FIRST_PRG_4)
* [2115_FIRST_PRG_5](#2115_FIRST_PRG_5)
* [2116_FIRST_PRG_6](#2116_FIRST_PRG_6)
* [2117_FIRST_PRG_7](#2117_FIRST_PRG_7)
* [2118_FIRST_PRG_8](#2118_FIRST_PRG_8)
* [2119_FIRST_PRG_9](#2119_FIRST_PRG_9)
* [21110_FIRST_PRG_10](#21110_FIRST_PRG_10)
* [21111_FIRST_PRG_11](#21111_FIRST_PRG_11)
* [21112_FIRST_PRG_12](#21112_FIRST_PRG_12)
* [21113_FIRST_PRG_13](#21113_FIRST_PRG_13)
* [21114_FIRST_PRG_14](#21114_FIRST_PRG_14)
* [21115_FIRST_PRG_15](#21115_FIRST_PRG_15)
* [21116_FIRST_PRG_16](#21116_FIRST_PRG_16)
* [21117_FIRST_PRG_17](#21117_FIRST_PRG_17)
* [21118_PRINT](#21118_PRINT)
* [21119_FORMAT_THE_OUT](#21119_FORMAT_THE_OUT)
* [21120_SUMMARY](#21120_SUMMARY)

---

#### 2111_FIRST_PRG_1

##### Hello, World!

It's time to start writing some real, working Python code. It'll be very simple for the time being.
As we're going to show you some fundamental concepts and terms, these snippets of code won't be serious or complex.
Run the code in the editor window on the right. If everything goes okay here, you'll see the line of text in the console window.
Alternatively, launch IDLE, create a new Python source file, fill it with this code, name the file and save it. Now run it. If everything goes okay, you'll see the rhyme's line in the IDLE console window. The code you have run should look familiar. You saw something very similar when we led you through the setting up of the IDLE environment.
Now we'll spend some time showing and explaining to you what you're actually seeing, and why it looks like this.
As you can see, the first program consists of the following parts:

- the word ```print```;
- an opening parenthesis;
- a quotation mark;
- a line of text: ```Hello, World!```;
- another quotation mark;
- a closing parenthesis.

Each of the above plays a very important role in the code.

```py
print("Hello, World!")

>>>
Hello, World!
>>>
```

[^^^](#21_HELLO_WORLD)

---

#### 2112_FIRST_PRG_2

##### The print() function

Look at the line of code below:

```py
print("Hello, World!")

>>>
Hello, World!
>>>
```

The word print that you can see here is a function name. That doesn't mean that wherever the word appears it is always a function name. The meaning of the word comes from the context in which the word has been used.

You've probably encountered the term function many times before, during math classes. You can probably also list several names of mathematical functions, like sine or log.

Python functions, however, are more flexible, and can contain more content than their mathematical siblings.

A function (in this context) is a separate part of the computer code able to:

- cause some effect (e.g., send text to the terminal, create a file, draw an image, play a sound, etc.); this is something completely unheard of in the world of mathematics;
- evaluate a value (e.g., the square root of a value or the length of a given text) and return it as the function's result; this is what makes Python functions the relatives of mathematical concepts.

Moreover, many of Python functions can do the above two things together.

Where do the functions come from?

- They may come from Python itself; the print function is one of this kind; such a function is an added value received together with Python and its environment (it is built-in); you don't have to do anything special (e.g., ask anyone for anything) if you want to make use of it;
- they may come from one or more of Python's add-ons named modules; some of the modules come with Python, others may require separate installation - whatever the case, they all need to be explicitly connected with your code (we'll show you how to do that soon);
- you can write them yourself, placing as many functions as you want and need inside your program to make it simpler, clearer and more elegant.

The name of the function should be significant (the name of the print function is self-evident).

Of course, if you're going to make use of any already existing function, you have no influence on its name, but when you start writing your own functions, you should consider carefully your choice of names.

[^^^](#21_HELLO_WORLD)

---

#### 2113_FIRST_PRG_3

##### The print() function

As we said before, a function may have:

- an effect;
- a result.

There's also a third, very important, function component - the argument(s).

Mathematical functions usually take one argument, e.g., sin(x) takes an x, which is the measure of an angle.

Python functions, on the other hand, are more versatile. Depending on the individual needs, they may accept any number of arguments - as many as necessary to perform their tasks. Note: any number includes zero - some Python functions don't need any argument.

```py
print("Hello, World!")

>>>
Hello, World!
>>>
```

In spite of the number of needed/provided arguments, Python functions strongly demand the presence of a pair of parentheses - opening and closing ones, respectively.

If you want to deliver one or more arguments to a function, you place them inside the parentheses. If you're going to use a function which doesn't take any argument, you still have to have the parentheses.

Note: to distinguish ordinary words from function names, place a pair of empty parentheses after their names, even if the corresponding function wants one or more arguments. This is a standard convention.

The function we're talking about here is print().

Does the print() function in our example have any arguments?

Of course it does, but what are they?

[^^^](#21_HELLO_WORLD)

---

#### 2114_FIRST_PRG_4

[^^^](#21_HELLO_WORLD)

---

#### 2115_FIRST_PRG_5

[^^^](#21_HELLO_WORLD)

---

#### 2116_FIRST_PRG_6

[^^^](#21_HELLO_WORLD)

---

#### 2117_FIRST_PRG_7

[^^^](#21_HELLO_WORLD)

---

#### 2118_FIRST_PRG_8

[^^^](#21_HELLO_WORLD)

---

#### 2119_FIRST_PRG_9

[^^^](#21_HELLO_WORLD)

---

#### 21110_FIRST_PRG_10

[^^^](#21_HELLO_WORLD)

---

#### 21111_FIRST_PRG_11

[^^^](#21_HELLO_WORLD)

---

#### 21112_FIRST_PRG_12

[^^^](#21_HELLO_WORLD)

---

#### 21113_FIRST_PRG_13

[^^^](#21_HELLO_WORLD)

---

#### 21114_FIRST_PRG_14

[^^^](#21_HELLO_WORLD)

---

#### 21115_FIRST_PRG_15

[^^^](#21_HELLO_WORLD)

---

#### 21116_FIRST_PRG_16

[^^^](#21_HELLO_WORLD)

---

#### 21117_FIRST_PRG_17

[^^^](#21_HELLO_WORLD)

---

#### 21118_PRINT

[^^^](#21_HELLO_WORLD)

---

#### 21119_FORMAT_THE_OUT

[^^^](#21_HELLO_WORLD)

---

#### 21120_SUMMARY

[^^^](#21_HELLO_WORLD)

---
