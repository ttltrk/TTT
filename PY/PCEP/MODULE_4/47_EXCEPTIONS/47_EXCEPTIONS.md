
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 47_EXCEPTIONS

---

* [4711_EXCEPTIONS](#4711_EXCEPTIONS)
* [4712_EXCEPTIONS](#4712_EXCEPTIONS)
* [4713_EXCEPTIONS](#4713_EXCEPTIONS)
* [4714_EXCEPTIONS](#4714_EXCEPTIONS)
* [4715_EXCEPTIONS](#4715_EXCEPTIONS)
* [4716_EXCEPTIONS](#4716_EXCEPTIONS)
* [4717_EXCEPTIONS](#4717_EXCEPTIONS)
* [4718_TEST_DEBUG](#4718_TEST_DEBUG)
* [4719_TEST_DEBUG](#4719_TEST_DEBUG)
* [47110_TESTING](#47110_TESTING)
* [47111_PRINT_DEBUG](#47111_PRINT_DEBUG)
* [47112_TEST_DEBUG](#47112_TEST_DEBUG)
* [47113_SUMMARY](#47113_SUMMARY)

---

#### 4711_EXCEPTIONS

##### Errors – the developer's daily bread

It seems indisputable that all programmers (including you) want to write error-free code and do their best to achieve this goal. Unfortunately, nothing is perfect in this world and software is no exception. Pay attention to the word exception as we’ll see it again very soon in a meaning that has nothing in common with the absolute.

To err is human. It's impossible to make no mistakes, and it's impossible to write error-free code. Don't get us wrong – we don't want to convince you that writing messy and faulty programs is a virtue. We rather want to explain that even the most careful programmer is not able to avoid minor or major defects. It's only those who do nothing that make no mistakes.

Paradoxically, accepting this difficult truth can make you a better programmer and may improve your code quality.

"How could this be possible?", you may ask.

We'll try to show you.

##### Errors in data vs. errors in code

Dealing with programming errors has (at least) two sides. The one appears when you get into trouble because your – apparently correct – code is fed with bad data. For example, you expect the code will input an integer value, but your careless user enters some random letters instead.

It may happen that your code will be terminated then, and the user will be left alone with a terse and ambiguous error message on the screen. The user will be unsatisfied, and you should be unsatisfied, too.

We're going to show you how to protect your code from this kind of failure and how not to provoke the user's anger.

The other side of dealing with programming errors reveals itself when undesirable code behavior is caused by mistakes you made when you were writing your program. This kind of error is commonly called a “bug”, which is a manifestation of a well-established belief that if a program works badly, it must be caused by malicious bugs which live inside the computer hardware and cause short circuits or other interference.

This idea is not as mad as it may look – such incidents were common in times when computers occupied large halls, consumed kilowatts of electricity, and produced enormous amounts of heat. Fortunately or not, these times are gone forever and the only bugs which can spoil your code are those you sowed in the code yourself. Therefore, we will try to show you how to find and eliminate your bugs, in other words, how to debug your code.

Let's start the journey through the land of errors and bugs.

[^^^](47_EXCEPTIONS)

---

#### 4712_EXCEPTIONS

##### When data is not what it should be

Let's write a piece of extremely trivial code – it will read a natural number (a non-negative integer) and print its reciprocal. In this way, 2 will turn into 0.5 (1/2) and 4 into 0.25 (1/4). Here’s the program:

Is there anything that can go wrong with it? The code is so brief and so compact that it doesn't seem like we’ll find any trouble there.

It seems that you already know where we are going. Yes, you're right – entering data that is not an integer (which also includes entering nothing at all) will completely ruin the program execution. This is what the code's user will see:

```py
Traceback (most recent call last):
  File "code.py", line 1, in
    value = int(input('Enter a natural number: '))
ValueError: invalid literal for int() with base 10: ''
```

All the lines Python shows you are meaningful and important, but the last line seems to be the most valuable. The first word in the line is the name of the exception which causes your code to stop. It's ValueError here. The rest of the line is just a brief explanation which more precisely specifies the cause of the occurred exception.


How do you deal with it? How do you protect your code from termination, the user from disappointment, and yourself from the user's dissatisfaction?

The very first thought that can come to your mind is to check if the data provided by the user is valid and to refuse to cooperate if the data is incorrect. In this case, the check can rely on the fact that we expect the input string to contain digits only.

You should already be able to implement this check and write it yourself, shouldn’t you? It is also possible to check if the value variable's type is an int (Python has a special means for these kinds of checks – it's an operator named is. The check itself may look like this:

```py
type(value) is int
```

and evaluates to true if the current value variable's type is int.

Please forgive us if we don't spend any more time on it now – you will find more detailed explanations of the is operator in a course module devoted to Object-Oriented Programming.

You may be surprised to learn that we don't want you to do any preliminary data validation. Why? Because this is not the way Python recommends. Really.

```py
value = int(input('Enter a natural number: '))
print('The reciprocal of', value, 'is', 1/value)

>>>
Enter a natural number: 2
The reciprocal of 2 is 0.5
>>>
```

[^^^](47_EXCEPTIONS)

---

#### 4713_EXCEPTIONS

[^^^](47_EXCEPTIONS)

---

#### 4714_EXCEPTIONS

[^^^](47_EXCEPTIONS)

---

#### 4715_EXCEPTIONS

[^^^](47_EXCEPTIONS)

---

#### 4716_EXCEPTIONS

[^^^](47_EXCEPTIONS)

---

#### 4717_EXCEPTIONS

[^^^](47_EXCEPTIONS)

---

#### 4718_TEST_DEBUG

[^^^](47_EXCEPTIONS)

---

#### 4719_TEST_DEBUG

[^^^](47_EXCEPTIONS)

---

#### 47110_TESTING

[^^^](47_EXCEPTIONS)

---

#### 47111_PRINT_DEBUG

[^^^](47_EXCEPTIONS)

---

#### 47112_TEST_DEBUG

[^^^](47_EXCEPTIONS)

---

#### 47113_SUMMARY

[^^^](47_EXCEPTIONS)

---
