
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_2](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_2/MODULE_2.md)

---

#### 26_INPUT_AND_STRING_OPS

---

* [2611_HOW_TO_TALK_1](#2611_HOW_TO_TALK_1)
* [2612_HOW_TO_TALK_2](#2612_HOW_TO_TALK_2)
* [2613_HOW_TO_TALK_3](#2613_HOW_TO_TALK_3)
* [2614_HOW_TO_TALK_4](#2614_HOW_TO_TALK_4)
* [2615_HOW_TO_TALK_5](#2615_HOW_TO_TALK_5)
* [2616_HOW_TO_TALK_6](#2616_HOW_TO_TALK_6)
* [2617_HOW_TO_TALK_7](#2617_HOW_TO_TALK_7)
* [2618_HOW_TO_TALK_8](#2618_HOW_TO_TALK_8)
* [2619_HOW_TO_TALK_9](#2619_HOW_TO_TALK_9)

---

#### 2611_HOW_TO_TALK_1

##### The input() function

We're now going to introduce you to a completely new function, which seems to be a mirror reflection of the good old ```print()``` function.
Why? Well, ```print()``` sends data to the console.
The new function gets data from it.
print() has no usable result. The meaning of the new function is to return a very usable result.
The function is named input(). The name of the function says everything.
The ```input()``` function is able to read data entered by the user and to return the same data to the running program.
The program can manipulate the data, making the code truly interactive.
Virtually all programs read and process data. A program which doesn't get a user's input is a deaf program.

Take a look at our example:

```py
print("Tell me anything...")
anything = input()
print("Hmm...", anything, "... Really?")

>>>
Tell me anything...
hey
Hmm... hey ... Really?
>>>
```

It shows a very simple case of using the input() function.

Note:

- The program prompts the user to input some data from the console (most likely using a keyboard, although it is also possible to input data using voice or image);
- the input() function is invoked without arguments (this is the simplest way of using the function); the function will switch the console to input mode; you'll see a blinking cursor, and you'll be able to input some keystrokes, finishing off by hitting the Enter key; all the inputted data will be sent to your program through the function's result;
- note: you need to assign the result to a variable; this is crucial - missing out this step will cause the entered data to be lost;
- then we use the print() function to output the data we get, with some additional remarks.

Try to run the code and let the function show you what it can do for you.

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2612_HOW_TO_TALK_2

##### The input() function with an argument

The input() function can do something else: it can prompt the user without any help from print().

We've modified our example a bit, look at the code:

```py
anything = input("Tell me anything...")
print("Hmm...", anything, "...Really?")

>>>
Tell me anything...wow
Hmm... wow ...Really?
>>>
```

the input() function is invoked with one argument - it's a string containing a message;
the message will be displayed on the console before the user is given an opportunity to enter anything;
input() will then do its job.
This variant of the input() invocation simplifies the code and makes it clearer.

##### The result of the input() function

We've said it already, but it must be unambiguously stated once again: the result of the input() function is a string.

A string containing all the characters the user enters from the keyboard. It is not an integer or a float.

This means that you mustn't use it as an argument of any arithmetic operation, e.g., you can't use this data to square it, divide it by anything, or divide anything by it.

```py
anything = input("Enter a number: ")
something = anything ** 2.0
print(anything, "to the power of 2 is", something)

>>>
Enter a number: 2
Unsupported operand type(s) for ** or pow(): 'str' and 'float'
>>>
```

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2613_HOW_TO_TALK_3

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2614_HOW_TO_TALK_4

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2615_HOW_TO_TALK_5

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2616_HOW_TO_TALK_6

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2617_HOW_TO_TALK_7

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2618_HOW_TO_TALK_8

[^^^](#26_INPUT_AND_STRING_OPS)

---

#### 2619_HOW_TO_TALK_9

[^^^](#26_INPUT_AND_STRING_OPS)

---
