

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### ESSENTIALS

---

* [HELLO_WORLD](#HELLO_WORLD)
* [PRINT_FUNCTION](#PRINT_FUNCTION)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### HELLO_WORLD

##### Hello, World!

It's time to start writing some real, working Python code. It'll be very simple for the time being.

As we're going to show you some fundamental concepts and terms, these snippets of code won't be serious or complex.

Run the code in the editor window on the right. If everything goes okay here, you'll see the line of text in the console window.

Alternatively, launch IDLE, create a new Python source file, fill it with this code, name the file and save it. Now run it. If everything goes okay, you'll see the rhyme's line in the IDLE console window. The code you have run should look familiar. You saw something very similar when we led you through the setting up of the IDLE environment.

Now we'll spend some time showing and explaining to you what you're actually seeing, and why it looks like this.

As you can see, the first program consists of the following parts:

- the word print;
- an opening parenthesis;
- a quotation mark;
- a line of text: Hello, World!;
- another quotation mark;
- a closing parenthesis.

Each of the above plays a very important role in the code.

```py
print("Hello World")

>>>
Hello World
>>>
```

[^^^](#ESSENTIALS)

---

#### PRINT_FUNCTION

##### The print() function

Look at the line of code below:

```py
print("Hello World")

>>>
Hello World
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

As we said before, a function may have:

- an effect;
- a result.

There's also a third, very important, function component - the argument(s).

Mathematical functions usually take one argument, e.g., sin(x) takes an x, which is the measure of an angle.

Python functions, on the other hand, are more versatile. Depending on the individual needs, they may accept any number of arguments - as many as necessary to perform their tasks. Note: any number includes zero - some Python functions don't need any argument.

In spite of the number of needed/provided arguments, Python functions strongly demand the presence of a pair of parentheses - opening and closing ones, respectively.

If you want to deliver one or more arguments to a function, you place them inside the parentheses. If you're going to use a function which doesn't take any argument, you still have to have the parentheses.

Note: to distinguish ordinary words from function names, place a pair of empty parentheses after their names, even if the corresponding function wants one or more arguments. This is a standard convention.

The function we're talking about here is print().

Does the print() function in our example have any arguments?

Of course it does, but what are they?

The only argument delivered to the print() function in this example is a string.
As you can see, the string is delimited with quotes - in fact, the quotes make the string - they cut out a part of the code and assign a different meaning to it.

You can imagine that the quotes say something like: the text between us is not code. It isn't intended to be executed, and you should take it as is.

Almost anything you put inside the quotes will be taken literally, not as code, but as data. Try to play with this particular string - modify it, enter some new content, delete some of the existing content.

There's more than one way to specify a string inside Python's code, but for now, though, this one is enough.
So far, you have learned about two important parts of the code: the function and the string. We've talked about them in terms of syntax, but now it's time to discuss them in terms of semantics.

The function name (print in this case) along with the parentheses and argument(s), forms the function invocation.

We'll discuss this in more depth soon, but we should just shed a little light on it right now.

Let's see:

- First, Python checks if the name specified is legal (it browses its internal data in order to find an existing function of the name; if this search fails, Python aborts the code);
- second, Python checks if the function's requirements for the number of arguments allows you to invoke the function in this way (e.g., if a specific function demands exactly two arguments, any invocation delivering only one argument will be considered erroneous, and will abort the code's execution);
- third, Python leaves your code for a moment and jumps into the function you want to invoke; of course, it takes your argument(s) too and passes it/them to the function;
- fourth, the function executes its code, causes the desired effect (if any), evaluates the desired result(s) (if any) and finishes its task;
- finally, Python returns to your code (to the place just after the invocation) and resumes its execution.

Three important questions have to be answered as soon as possible:

##### 1. What is the effect the print() function causes?

The effect is very useful and very spectacular. The function:

- takes its arguments (it may accept more than one argument and may also accept less than one argument)
- converts them into human-readable form if needed (as you may suspect, strings don't require this action, as the string is already readable)
- and sends the resulting data to the output device (usually the console); in other words, anything you put into the print() function will appear on your screen.
No wonder then, that from now on, you'll utilize print() very intensively to see the results of your operations and evaluations.

##### 2. What arguments does print() expect?

Any. We'll show you soon that print() is able to operate with virtually all types of data offered by Python. Strings, numbers, characters, logical values, objects - any of these may be successfully passed to print().

##### 3. What value does the print() function return?

None. Its effect is enough.

[^^^](#ESSENTIALS)

---

####

#####

[^^^](#ESSENTIALS)

---


####

#####

[^^^](#ESSENTIALS)

---


####

#####

[^^^](#ESSENTIALS)

---
