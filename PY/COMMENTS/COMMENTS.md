
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### COMMENTS

---

* [SINGLE_LINE_COMMENTS](#SINGLE_LINE_COMMENTS)
* [MULTI_LINE_COMMENTS](#MULTI_LINE_COMMENTS)

---

```
Comments can be used to explain Python code.
Comments can be used to make the code more readable.
Comments can be used to prevent execution when testing code.
```

---

#### SINGLE_LINE_COMMENTS

```py
#This is a comment
print("Hello, World!")

>>>
Hello, World!
>>>
```

```py
print("Hello, World!") #This is a comment

>>>
Hello, World!
>>>
```

```py
#print("Hello, World!")
print("Cheers, Mate!")

>>>
Cheers, Mate!
>>>
```

[^^^](#COMMENTS)

---

#### MULTI_LINE_COMMENTS

```py
"""
This is a comment
written in
more than just one line
"""

print("Hello, World!")

>>>
Hello, World!
>>>
```

##### - Leaving comments in code: why, how, and when

You may want to put in a few words addressed not to Python but to humans, usually to explain to other readers of the code how the tricks used in the code work, or the meanings of the variables, and eventually, in order to keep stored information on who the author is and when the program was written.

A remark inserted into the program, which is omitted at runtime, is called a comment.

How do you leave this kind of comment in the source code? It has to be done in a way that won't force Python to interpret it as part of the code.

Whenever Python encounters a comment in your program, the comment is completely transparent to it - from Python's point of view, this is only one space (regardless of how long the real comment is).

In Python, a comment is a piece of text that begins with a ```#``` (hash) sign and extends to the end of the line.

If you want a comment that spans several lines, you have to put a hash in front of them all.

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
Comments may be useful in another respect - you can use them to mark a piece of code that currently isn't needed for whatever reason.

```py
# This is a test program.
x = 1
y = 2
# y = y + x
print(x + y)
```

This is often done during the testing of a program, in order to isolate the place where an error might be hidden.


[^^^](#COMMENTS)

---
