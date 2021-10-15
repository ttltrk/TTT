
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md)

---

### LIST

---

- [LIST_INTRO](#LIST_INTRO)
- [LIST_BASICS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST_BASICS/LIST_BASICS.md)
- [LIST_TO](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST_TO/LIST_TO.md)
- [LIST_METHODS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST_METH/LIST_METH.md)
- [LIST_COMPREHENSION](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST_COMP/LIST_COMP.md)

---

#### LIST_INTRO

##### - Why do we need lists?

It may happen that you have to read, store, process, and finally, print dozens, maybe hundreds, perhaps even thousands of numbers. What then? Do you need to create a separate variable for each value? Will you have to spend long hours writing statements like the one below?

```py
var1 = int(input())
var2 = int(input())
var3 = int(input())
var4 = int(input())
var5 = int(input())
var6 = int(input())
:
:
```

If you don't think that this is a complicated task, then take a piece of paper and write a program that:

- reads five numbers,
- prints them in order from the smallest to the largest (NB, this kind of processing is called sorting).

You should find that you don't even have enough paper to complete the task.

So far, you've learned how to declare variables that are able to store exactly one given value at a time. Such variables are sometimes called scalars by analogy with mathematics. All the variables you've used so far are actually scalars.

Think of how convenient it would be to declare a variable that could store more than one value. For example, a hundred, or a thousand or even ten thousand. It would still be one and the same variable, but very wide and capacious. Sounds appealing? Perhaps, but how would it handle such a container full of different values? How would it choose just the one you need?

What if you could just number them? And then say: give me the value number 2; assign the value number 15; increase the value number 10000.

We'll show you how to declare such multi-value variables. We'll do this with the example we just suggested. We'll write a program that sorts a sequence of numbers. We won't be particularly ambitious - we'll assume that there are exactly five numbers.

Let's create a variable called numbers; it's assigned with not just one number, but is filled with a list consisting of five values (note: the list starts with an open square bracket and ends with a closed square bracket; the space between the brackets is filled with five numbers separated by commas).

```py
numbers = [10, 5, 7, 2, 1]
```

Let's say the same thing using adequate terminology: numbers is a list consisting of five values, all of them numbers. We can also say that this statement creates a list of length equal to five (as in there are five elements inside it).

The elements inside a list may have different types. Some of them may be integers, others floats, and yet others may be lists.

Python has adopted a convention stating that the elements in a list are always numbered starting from zero. This means that the item stored at the beginning of the list will have the number zero. Since there are five elements in our list, the last of them is assigned the number four. Don't forget this.

You'll soon get used to it, and it'll become second nature.

Before we go any further in our discussion, we have to state the following: our list is a collection of elements, but each element is a scalar.

[^^^](#LIST)

---

##### Indexing lists

How do you change the value of a chosen element in the list?

Let's assign a new value of 111 to the first element in the list. We do it this way:

```py
numbers = [10, 5, 7, 2, 1]
print("Original list content:", numbers)  # Printing original list content.

numbers[0] = 111
print("New list content: ", numbers)  # Current list content.

>>>
Original list content: [10, 5, 7, 2, 1]
New list content:  [111, 5, 7, 2, 1]
>>>
```

And now we want the value of the fifth element to be copied to the second element - can you guess how to do it?

```py
numbers = [10, 5, 7, 2, 1]
print("Original list content:", numbers)  # Printing original list content.

numbers[0] = 111
print("\nPrevious list content:", numbers)  # Printing previous list content.

numbers[1] = numbers[4]  # Copying value of the fifth element to the second.
print("New list content:", numbers)  # Printing current list content.

>>>
Original list content: [10, 5, 7, 2, 1]

Previous list content: [111, 5, 7, 2, 1]
New list content: [111, 1, 7, 2, 1]
>>>
```

The value inside the brackets which selects one element of the list is called an index, while the operation of selecting an element from the list is known as indexing.

We're going to use the print() function to print the list content each time we make the changes. This will help us follow each step more carefully and see what's going on after a particular list modification.

Note: all the indices used so far are literals. Their values are fixed at runtime, but any expression can be the index, too. This opens up lots of possibilities.

[^^^](#LIST)

---

##### Accessing list content

Each of the list's elements may be accessed separately. For example, it can be printed:

```py
numbers = [111, 5, 7, 2, 1]
print(numbers[0]) # Accessing the list's first element.

>>>
111
>>>
```

Assuming that all of the previous operations have been completed successfully, the snippet will send 111 to the console.

As you can see in the editor, the list may also be printed as a whole - just like here:

```py
numbers = [111, 5, 7, 2, 1]
print(numbers)

>>>
[111, 5, 7, 2, 1]
>>>
```

As you've probably noticed before, Python decorates the output in a way that suggests that all the presented values form a list. The output from the example snippet above looks like this:

```py
[111, 1, 7, 2, 1]
```

[^^^](#LIST)

---

##### The len() function

The length of a list may vary during execution. New elements may be added to the list, while others may be removed from it. This means that the list is a very dynamic entity.
If you want to check the list's current length, you can use a function named ```len()``` (its name comes from length).
The function takes the list's name as an argument, and returns the number of elements currently stored inside the list (in other words - the list's length).
Look at the last line of code in the editor, run the program and check what value it will print to the console. Can you guess?

```py
numbers = [111, 5, 7, 2, 1]
print(len(numbers))

>>>
5
>>>
```

[^^^](#LIST)

---

##### Removing elements from a list

Any of the list's elements may be removed at any time - this is done with an instruction named ```del``` (delete). Note: it's an instruction, not a function.
You have to point to the element to be removed - it'll vanish from the list, and the list's length will be reduced by one.
Look at the snippet below. Can you guess what output it will produce? Run the program in the editor and check.

```py
numbers = [111, 5, 7, 2, 1]

del numbers[1]
print(len(numbers))
print(numbers)

>>>
4
[111, 7, 2, 1]
>>>
```

You can't access an element which doesn't exist - you can neither get its value nor assign it a value. Both of these instructions will cause runtime errors now.

[^^^](#LIST)

---

##### Negative indices are legal

It may look strange, but negative indices are legal, and can be very useful.

An element with an index equal to -1 is the last one in the list.

```py
numbers = [111, 5, 7, 2, 1]

print(numbers)
print(numbers[-1])
print(numbers[-2])
print(numbers[-3])

>>>
[111, 5, 7, 2, 1]
1
2
7
>>>
```

[^^^](#LIST)

---

##### List example

- write a line of code that prompts the user to replace the middle number in the list with an integer number entered by the user (Step 1)
- write a line of code that removes the last element from the list (Step 2)
- write a line of code that prints the length of the existing list (Step 3).

```py
hat_list = [1, 2, 3, 4, 5]  # This is an existing list of numbers hidden in the hat.
print(hat_list)

repl = int(input('give me a number for replace: '))

hat_list[2] = repl
print(hat_list)

del hat_list[-1]
print(hat_list)

print(len(hat_list))

>>>
[1, 2, 3, 4, 5]
give me a number for replace: 20
[1, 2, 20, 4, 5]
[1, 2, 20, 4]
4
>>>
```

[^^^](#LIST)

---

##### Functions vs. methods

A method is a specific kind of function - it behaves like a function and looks like a function, but differs in the way in which it acts, and in its invocation style.
A function doesn't belong to any data - it gets data, it may create new data and it (generally) produces a result.
A method does all these things, but is also able to change the state of a selected entity.
A method is owned by the data it works for, while a function is owned by the whole code.

This also means that invoking a method requires some specification of the data from which the method is invoked.
It may sound puzzling here, but we'll deal with it in depth when we delve into object-oriented programming.
In general, a typical function invocation may look like this:

```py
result = function(arg)
```

The function takes an argument, does something, and returns a result.

A typical method invocation usually looks like this:

```py
result = data.method(arg)
```

Note: the name of the method is preceded by the name of the data which owns the method. Next, you add a dot, followed by the method name, and a pair of parenthesis enclosing the arguments.
The method will behave like a function, but can do something more - it can change the internal state of the data from which it has been invoked.
You may ask: why are we talking about methods, not about lists?
This is an essential issue right now, as we're going to show you how to add new elements to an existing list. This can be done with methods owned by all the lists, not by functions.

[^^^](#LIST)

---

##### Adding elements to a list: append() and insert()

A new element may be glued to the end of the existing list:

```py
list.append(value)
```

Such an operation is performed by a method named ```append()```. It takes its argument's value and puts it at the end of the list which owns the method.

The list's length then increases by one.

The ```insert()``` method is a bit smarter - it can add a new element at any place in the list, not only at the end.

```py
list.insert(location, value)
```

It takes two arguments:

- the first shows the required location of the element to be inserted; note: all the existing elements
  that occupy locations to the right of the new element (including the one at the indicated position) are shifted to the right, in order to make space for the new element;
- the second is the element to be inserted.

Look at the code in the editor. See how we use the ```append()``` and ```insert()``` methods.
Pay attention to what happens after using ```insert()```: the former first element is now the second, the second the third, and so on.
Add the following snippet after the last line of code in the editor:

```py
numbers.insert(1, 333)
```

Print the final list content to the screen and see what happens. The snippet above snippet inserts 333 into the list, making it the second element. The former second element becomes the third, the third the fourth, and so on.

```py
numbers = [111, 7, 2, 1]
print(len(numbers))
print(numbers)

print(' ')

numbers.append(4)
print(len(numbers))
print(numbers)

print(' ')

numbers.insert(0, 222)
print(len(numbers))
print(numbers)

>>>
4
[111, 7, 2, 1]

5
[111, 7, 2, 1, 4]

6
[222, 111, 7, 2, 1, 4]
>>>
```

[^^^](#LIST)

---

##### Adding elements to a list: continued

[^^^](#LIST)

---

#####

[^^^](#LIST)

---

#####

[^^^](#LIST)

---

#####

[^^^](#LIST)

---
