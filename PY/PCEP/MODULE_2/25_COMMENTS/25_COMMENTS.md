
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_2](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_2/MODULE_2.md)

---

#### 25_COMMENTS

---

* [2511_COMMENTS_1](#2511_COMMENTS_1)
* [2512_COMMENTS_2](#2512_COMMENTS_2)
* [2513_COMMENTS_3](#2513_COMMENTS_3)

---

#### 2511_COMMENTS_1

##### Leaving comments in code: why, how, and when

You may want to put in a few words addressed not to Python but to humans, usually to explain to other readers of the code how the tricks used in the code work, or the meanings of the variables, and eventually, in order to keep stored information on who the author is and when the program was written.
A remark inserted into the program, which is omitted at runtime, is called a comment.
How do you leave this kind of comment in the source code? It has to be done in a way that won't force Python to interpret it as part of the code.
Whenever Python encounters a comment in your program, the comment is completely transparent to it - from Python's point of view, this is only one space (regardless of how long the real comment is).
In Python, a comment is a piece of text that begins with a ```#``` (hash) sign and extends to the end of the line.
If you want a comment that spans several lines, you have to put a hash in front of them all.

Just like here:

```py
# This program evaluates the hypotenuse c.
# a and b are the lengths of the legs.
a = 3.0
b = 4.0
c = (a ** 2 + b ** 2) ** 0.5  # We use ** instead of square root.
print("c =", c)

>>>
c = 5.0
>>>
```

Good, responsible developers describe each important piece of code, e.g., explaining the role of the variables; although it must be stated that the best way of commenting variables is to name them in an unambiguous manner.

For example, if a particular variable is designed to store an area of some unique square, the name square_area will obviously be better than aunt_jane.

We say that the first name is self-commenting.

Comments may be useful in another respect - you can use them to mark a piece of code that currently isn't needed for whatever reason. Look at the example below, if you uncomment the highlighted line, this will affect the output of the code:

```py
# This is a test program.
x = 1
y = 2
# y = y + x
print(x + y)

>>>
3
>>>
```

This is often done during the testing of a program, in order to isolate the place where an error might be hidden.

If you'd like to quickly comment or uncomment multiple lines of code, select the line(s) you wish to modify and use the following keyboard shortcut: ```CTRL + / (Windows)``` or ```CMD + / (Mac OS)```. It's a very useful trick, isn't it? Try this code in Sandbox.

[^^^](#25_COMMENTS)

---

#### 2512_COMMENTS_2

[^^^](#25_COMMENTS)

---

#### 2513_COMMENTS_3

##### Key takeaways

1. Comments can be used to leave additional information in code. They are omitted at runtime. The information left in source code is addressed to human readers. In Python, a comment is a piece of text that begins with #. The comment extends to the end of line.

2. If you want to place a comment that spans several lines, you need to place # in front of them all. Moreover, you can use a comment to mark a piece of code that is not needed at the moment (see the last line of the snippet below), e.g.:

```py
# This program prints
# an introduction to the screen.
print("Hello!")  # Invoking the print() function
# print("I'm Python.")

>>>
Hello!
>>>
```

3. Whenever possible and justified, you should give self-commenting names to variables, e.g., if you're using two variables to store a length and width of something, the variable names length and width may be a better choice than myvar1 and myvar2.

4. It's important to use comments to make programs easier to understand, and to use readable and meaningful variable names in code. However, it's equally important not to use variable names that are confusing, or leave comments that contain wrong or incorrect information!

5. Comments can be important when you are reading your own code after some time (trust us, developers do forget what their own code does), and when others are reading your code (can help them understand what your programs do and how they do it more quickly).

- Exercise 1

What is the output of the following snippet?

```py
# print("String #1")
print("String #2")

>>>
String #2
>>>
```

- Exercise 2

What will happen when you run the following code?

```py
# This is
a multiline
comment. #

print("Hello!")

>>>
Hello!
>>>
```

[^^^](#25_COMMENTS)

---
