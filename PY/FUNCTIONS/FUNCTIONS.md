
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### FUNCTIONS

---

* [BUILT_IN_FUNCTIONS](#BUILT_IN_FUNCTIONS)
* [INPUT](#INPUT)

---

```

```

---

#### BUILT_IN_FUNCTIONS


| Function | Description | Code |
| --- | --- | --- |
| abs()	| Returns the absolute value of a number | x = abs(-7.25) #7.25 |
| all()	| Returns True if all items in an iterable object are true | |
| any()	| Returns True if any item in an iterable object is true | |
| ascii()	| Returns a readable version of an object. Replaces none-ascii characters with escape character | |
| bin()	| Returns the binary version of a number | |
| bool()	| Returns the boolean value of the specified object | |
| bytearray()	| Returns an array of bytes | |
| bytes()	| Returns a bytes object | |
| callable()	| Returns True if the specified object is callable, otherwise False | |
| chr()	| Returns a character from the specified Unicode code. | |
| classmethod()	| Converts a method into a class method | |
| compile()	| Returns the specified source as an object, ready to be executed | |
| complex()	| Returns a complex number | |
| delattr()	| Deletes the specified attribute (property or method) from the specified object | |
| dict()	| Returns a dictionary (Array) | |
| dir()	| Returns a list of the specified object's properties and methods | |
| divmod()	| Returns the quotient and the remainder when argument1 is divided by argument2 | |
| enumerate()	| Takes a collection (e.g. a tuple) and returns it as an enumerate object | |
| eval()	| Evaluates and executes an expression | |
| exec()	| Executes the specified code (or object) | |
| filter()	| Use a filter function to exclude items in an iterable object | |
| float()	| Returns a floating point number | |
| format()	| Formats a specified value | |
| frozenset()	| Returns a frozenset object | |
| getattr()	| Returns the value of the specified attribute (property or method) | | |
| globals()	| Returns the current global symbol table as a dictionary | |
| hasattr()	| Returns True if the specified object has the specified attribute (property/method) | |
| hash()	| Returns the hash value of a specified object | |
| help()	| Executes the built-in help system | |
| hex()	| Converts a number into a hexadecimal value | |
| id()	| Returns the id of an object | |
| input()	| Allowing user input | |
| isinstance()	| Returns True if a specified object is an instance of a specified object | |
| int()	| Returns an integer number | |
| issubclass()	| Returns True if a specified class is a subclass of a specified object | |
| iter()	| Returns an iterator object | |
| len()	| Returns the length of an object | |
| list()	| Returns a list | |
| locals()	| Returns an updated dictionary of the current local symbol table | |
| map()	| Returns the specified iterator with the specified function applied to each item | |
| max()	| Returns the largest item in an iterable | |
| memoryview()	| Returns a memory view object | |
| min()	| Returns the smallest item in an iterable | |
| next()	| Returns the next item in an iterable | |
| object()	| Returns a new object | |
| open()	| Opens a file and returns a file object | |
| oct()	| Converts a number into an octal | |
| pow()	| Returns the value of x to the power of y | |
| ord()	| Convert an integer representing the Unicode of the specified character | |
| print()	| Prints to the standard output device | |
| property()	| Gets, sets, deletes a property | |
| range()	| Returns a sequence of numbers, starting from 0 and increments by 1 (by default) | |
| reversed()	| Returns a reversed iterator | |
| repr()	| Returns a readable version of an object | |
| round()	| Rounds a numbers | |
| set()	| Returns a new set object | |
| setattr()	| Sets an attribute (property/method) of an object | |
| slice()	| Returns a slice object | |
| sorted()	| Returns a sorted list | |
| staticmethod()	| Converts a method into a static method | |
| str()	| Returns a string object | |
| sum()	| Sums the items of an iterator | |
| super()	| Returns an object that represents the parent class | |
| tuple()	| Returns a tuple | |
| type()	| Returns the type of an object | |
| vars()	| Returns the __dict__ property of an object | |
| zip()	| Returns an iterator, from two or more iterators | |

---

#### INPUT

```print()``` has no usable result. The meaning of the new function is to return a very usable result.
The function is named ```input()```. The name of the function says everything.
The ```input()``` function is able to read data entered by the user and to return the same data to the running program.
The program can manipulate the data, making the code truly interactive.
Virtually all programs read and process data. A program which doesn't get a user's input is a deaf program.

```py
print("Tell me anything...")
anything = input()
print("Hmm...", anything, "... Really?")

>>>
Tell me anything...
heyho
Hmm... heyho ... Really?
>>>
```

- The program prompts the user to input some data from the console (most likely using a keyboard, although it is also possible to input data using voice or image);
- the ```input()``` function is invoked without arguments (this is the simplest way of using the function); the function will switch the console to input mode; you'll see a blinking cursor, and you'll be able to input some keystrokes, finishing off by hitting the Enter key; all the inputted data will be sent to your program through the function's result;
- note: you need to assign the result to a variable; this is crucial - missing out this step will cause the entered data to be lost;
- then we use the ```print()``` function to output the data we get, with some additional remarks.

##### - The input() function with an argument

The ```input()``` function can do something else: it can prompt the user without any help from ```print()```.

```py
anything = input("Tell me anything...")
print("Hmm...", anything, "...Really?")

>>>
Tell me anything...wwaawwaa
Hmm... wwaawwaa ...Really?
>>>
```

- the ```input()``` function is invoked with one argument - it's a string containing a message;
- the message will be displayed on the console before the user is given an opportunity to enter anything;
- ```input()``` will then do its job.

This variant of the ```input()``` invocation simplifies the code and makes it clearer.

##### - The result of the input() function

We've said it already, but it must be unambiguously stated once again: the result of the ```input()``` function is a string.
A string containing all the characters the user enters from the keyboard. It is not an integer or a float.
This means that you mustn't use it as an argument of any arithmetic operation, e.g., you can't use this data to square it, divide it by anything, or divide anything by it.

##### - Type casting

Python offers two simple functions to specify a type of data and solve this problem - here they are: ```int()``` and ```float()```.

Their names are self-commenting:

- the ```int()``` function takes one argument (e.g., a string: ```int(string)```) and tries to convert it into an integer; if it fails, the whole program will fail too (there is a workaround for this situation, but we'll show you this a little later);
- the ```float()``` function takes one argument (e.g., a string: ```float(string)```) and tries to convert it into a float (the rest is the same).

This is very simple and very effective. Moreover, you can invoke any of the functions by passing the ```input()``` results directly to them. There's no need to use any variable as an intermediate storage.
We've implemented the idea in the editor - take a look at the code.
Can you imagine how the string entered by the user flows from ```input()``` into ```print()```?
Try to run the modified code. Don't forget to enter a valid number.
Check some different values, small and big, negative and positive. Zero is a good input, too.

```py
anything = float(input("Enter a number: "))
something = anything ** 2.0
print(anything, "to the power of 2 is", something)

>>>
Enter a number: 20
20.0 to the power of 2 is 400.0
>>>
```

##### - More about input() and type casting

Our next example refers to the earlier program to find the length of a hypotenuse. Let's rewrite it and make it able to read the lengths of the legs from the console.
Check out the editor window - this is how it looks now.
The program asks the user twice for both legs' lengths, evaluates the hypotenuse and prints the result.
Run it and try to input some negative values.
The program - unfortunately - doesn't react to this obvious error.
Let's ignore this weakness for now. We'll come back to it soon.
Note that in the program that you can see in the editor, the hypo variable is used for only one purpose - to save the calculated value between the execution of the adjoining line of code.

As the ```print()``` function accepts an expression as its argument, you can remove the variable from the code.

```py
leg_a = float(input("Input first leg length: "))
leg_b = float(input("Input second leg length: "))
hypo = (leg_a**2 + leg_b**2) ** .5
print("Hypotenuse length is", hypo)

>>>
Input first leg length: 4
Input second leg length: 22
Hypotenuse length is 22.360679774997898
>>>
```

##### - String operators - introduction

- Concatenation

The ```+``` (plus) sign, when applied to two strings, becomes a concatenation operator:

```string + string```

It simply concatenates (glues) two strings into one. Of course, like its arithmetic sibling, it can be used more than once in one expression, and in such a context it behaves according to left-sided binding.

In contrast to its arithmetic sibling, the concatenation operator is not commutative, i.e., ```"ab" + "ba"``` is not the same as ```"ba" + "ab"```.

Don't forget - if you want the ```+``` sign to be a concatenator, not an adder, you must ensure that both its arguments are strings.

You cannot mix types here.

This simple program shows the ```+``` sign in its second use:

```py
fnam = input("May I have your first name, please? ")
lnam = input("May I have your last name, please? ")
print("Thank you.")
print("\nYour name is " + fnam + " " + lnam + ".")

>>>
May I have your first name, please? ttl
May I have your last name, please? trk
Thank you.

Your name is ttl trk.
>>>
```

##### - Replication

The ```*``` (asterisk) sign, when applied to a string and number (or a number and string, as it remains commutative in this position) becomes a replication operator:

```
string * number
number * string
```

It replicates the string the same number of times specified by the number.

For example:

```
"James" * 3 gives "JamesJamesJames"
3 * "an" gives "ananan"
5 * "2" (or "2" * 5) gives "22222" (not 10!)
```

A number less than or equal to zero produces an empty string.
This simple program "draws" a rectangle, making use of an old operator (+) in a new role:

```py
print("+" + 10 * "-" + "+")
print(("|" + " " * 10 + "|\n") * 5, end="")
print("+" + 10 * "-" + "+")

>>>
+----------+
|          |
|          |
|          |
|          |
|          |
+----------+
>>>
```

##### - Type conversion: str()

You already know how to use the ```int()``` and ```float()``` functions to convert a string into a number.

This type of conversion is not a one-way street. You can also convert a number into a string, which is way easier and safer - this operation is always possible.

A function capable of doing that is called ```str()```

```py
str(number)
```

##### - The "right-angle triangle" again

Here is our "right-angle triangle" program again:

```py
leg_a = float(input("Input first leg length: "))
leg_b = float(input("Input second leg length: "))
print("Hypotenuse length is " + str((leg_a**2 + leg_b**2) ** .5))

>>>
Input first leg length: szeva
---------------------------------------------------------------------------
ValueError                                Traceback (most recent call last)
<ipython-input-3-1190560a372b> in <module>
----> 1 leg_a = float(input("Input first leg length: "))
      2 leg_b = float(input("Input second leg length: "))
      3 print("Hypotenuse length is " + str((leg_a**2 + leg_b**2) ** .5))

ValueError: could not convert string to float: 'szeva'
>>>
```

We've modified it a bit to show you how the ```str()``` function works. Thanks to this, we can pass the whole result to the ```print()``` function as one string, forgetting about the commas.

[^^^](#FUNCTIONS)

---
