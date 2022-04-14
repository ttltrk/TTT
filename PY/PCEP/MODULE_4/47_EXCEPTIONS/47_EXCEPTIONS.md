
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

[^^^](#47_EXCEPTIONS)

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

[^^^](#47_EXCEPTIONS)

---

#### 4713_EXCEPTIONS

##### The try-except branch
In the Python world, there is a rule that says: "It’s better to beg for forgiveness than to ask for permission".

Let's stop here for a moment. Don't get us wrong – we don't want you to apply the rule in your everyday life. Don't take anyone's car without permission in the hope that you can be so convincing that you will avoid conviction. The rule is about something else.

Actually, the rule reads: "it's better to handle an error when it happens than to try to avoid it".

"Okay," you may say now, 'but how should I beg for forgiveness when the program is terminated and there is nothing left that can be done?" This is where the exception comes on the scene.

Look at the code in the editor.

You can see two branches here:

- first, starting with the try keyword – this is the place where you put the code you suspect is risky and may be terminated in case of error; note: this kind of error is called an exception, while the exception occurrence is called raising – we can say that an exception is (or was) raised;

- second, the part of the code starting with the except keyword is designed to handle the exception; it's up to you what you want to do here: you can clean up the mess or you can just sweep the problem under the carpet (although we would prefer the first solution).
So, we could say that these two blocks work like this:

- the try keyword marks the place where you try to do something without permission;
- the except keyword starts a location where you can show off your apology talents.

As you can see, this approach accepts errors (treats them as a normal part of the program's life) instead of escalating efforts to avoid errors at all.

```py
try:
	# It's a place where
	# you can do something
    # without asking for permission.
except:
	# It's a spot dedicated to
    # solemnly begging for forgiveness.
```

[^^^](#47_EXCEPTIONS)

---

#### 4714_EXCEPTIONS

##### The exception proves the rule

Let's rewrite the code to adopt the Python approach to life:

Let us summarize what we talked about:

- any part of the code placed between try and except is executed in a very special way – any error which occurs here won't terminate program execution. Instead, the control will immediately jump to the first line situated after the except keyword, and no other part of the try branch is executed;

- the code in the except branch is activated only when an exception has been encountered inside the try block. There is no way to get there by any other means;

- when either the try block or the except block is executed successfully, the control returns to the normal path of execution, and any code located beyond in the source file is executed as if nothing happened.

Now we want to ask you an innocent question: is ValueError the only way the control could fall into the except branch?

Analyze the code carefully and think over your answer!

```py
try:
    value = int(input('Enter a natural number: '))
    print('The reciprocal of', value, 'is', 1/value)        
except:
    print('I do not know what to do.')

>>>
Enter a natural number: 32
The reciprocal of 32 is 0.03125
>>>
```

[^^^](#47_EXCEPTIONS)

---

#### 4715_EXCEPTIONS

##### How to deal with more than one exception

The answer is obviously "no" – there is more than one possible way to raise an exception. For example, a user may enter zero as an input – can you predict what will happen next?

Yes, you're right – the division placed inside the print() function invocation will raise the ZeroDivisionError. As you may expect, the code's behavior will be the same as in the previous case – the user will see the "I do not know what to do..." message, which seems to be quite reasonable in this context, but it's also possible that you would want to handle this kind of problem in a bit different way.

Is it possible? Of course, it is. There are at least two approaches you can implement here.

The first of them is simple and complicated at the same time: you can just add two separate try blocks, one including the input() function invocation where the ValueError may be raised, and the second devoted to handling possible issues induced by the division. Both these try blocks would have their own except branches, and in effect you will gain full control over two different errors.

This solution is good, but it is a bit lengthy – the code becomes unnecessarily bloated. Moreover, it's not the only danger that awaits you. Note that leaving the first try-except block leaves a lot of uncertainty – you will have to add extra code to ensure that the value the user has entered is safe to use in division. This is how a seemingly simple solution becomes overly complicated.

Fortunately, Python offers a simpler way to deal with this kind of challenge.

##### Two exceptions after one try

Look at the code in the editor. As you can see, we've just introduced the second except branch. This is not the only difference – note that both branches have exception names specified. In this variant, each of the expected exceptions has its own way of handling the error, but it must be emphasized that only one of all branches can intercept the control – if one of the branches is executed, all the other branches remain idle.

Additionally, the number of except branches is not limited – you can specify as many or as few of them as you need, but don't forget that none of the exceptions can be specified more than once.

But this still isn't the last Python word on exceptions. Stay tuned.

```py
try:
    value = int(input('Enter a natural number: '))
    print('The reciprocal of', value, 'is', 1/value)        
except ValueError:
    print('I do not know what to do.')    
except ZeroDivisionError:
    print('Division by zero is not allowed in our Universe.')

>>>
Enter a natural number: 22
The reciprocal of 22 is 0.045454545454545456
>>>
```

[^^^](#47_EXCEPTIONS)

---

#### 4716_EXCEPTIONS

##### The default exception and how to use it
The code has changed again – can you see the difference?

We've added a third except branch, but this time it has no exception name specified – we can say it's anonymous or (what is closer to its actual role) it's the default. You can expect that when an exception is raised and there is no except branch dedicated to this exception, it will be handled by the default branch.

Note:

The default except branch must be the last except branch. Always!

```py
try:
    value = int(input('Enter a natural number: '))
    print('The reciprocal of', value, 'is', 1/value)        
except ValueError:
    print('I do not know what to do.')    
except ZeroDivisionError:
    print('Division by zero is not allowed in our Universe.')    
except:
    print('Something strange has happened here... Sorry!')

>>>
Enter a natural number: 20
The reciprocal of 20 is 0.05
>>>
```

[^^^](#47_EXCEPTIONS)

---

#### 4717_EXCEPTIONS

##### Some useful exceptions

Let’s discuss in more detail some useful (or rather, the most common) exceptions you may experience.

##### ZeroDivisionError

This appears when you try to force Python to perform any operation which provokes division in which the divider is zero, or is indistinguishable from zero. Note that there is more than one Python operator which may cause this exception to raise. Can you guess them all?

```
Yes, they are: /, //, and %.
```

##### ValueError

Expect this exception when you're dealing with values which may be inappropriately used in some context. In general, this exception is raised when a function (like int() or float()) receives an argument of a proper type, but its value is unacceptable.

##### TypeError

This exception shows up when you try to apply a data whose type cannot be accepted in the current context. Look at the example:

```py
short_list = [1]
one_value = short_list[0.5]
```

You're not allowed to use a float value as a list index (the same rule applies to tuples, too). TypeError is an adequate name to describe the problem, and an adequate exception to raise.

##### AttributeError

This exception arrives – among other occasions – when you try to activate a method which doesn't exist in an item you're dealing with. For example:

```py
short_list = [1]
short_list.append(2)
short_list.depend(3)
```

The third line of our example attempts to make use of a method which isn’t contained in the lists. This is the place where AttributeError is raised.

##### SyntaxError

This exception is raised when the control reaches a line of code which violates Python's grammar. It may sound strange, but some errors of this kind cannot be identified without first running the code. This kind of behavior is typical of interpreted languages – the interpreter always works in a hurry and has no time to scan the whole source code. It is content with checking the code which is currently being run. An example of such a category of issues will be presented very soon.

It's a bad idea to handle this exception in your programs. You should produce code that is free of syntax errors, instead of masking the faults you’ve caused.

[^^^](#47_EXCEPTIONS)

---

#### 4718_TEST_DEBUG

[^^^](#47_EXCEPTIONS)

---

#### 4719_TEST_DEBUG

[^^^](#47_EXCEPTIONS)

---

#### 47110_TESTING

[^^^](#47_EXCEPTIONS)

---

#### 47111_PRINT_DEBUG

[^^^](#47_EXCEPTIONS)

---

#### 47112_TEST_DEBUG

[^^^](#47_EXCEPTIONS)

---

#### 47113_SUMMARY

[^^^](#47_EXCEPTIONS)

---
