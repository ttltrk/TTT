
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 43_WRITING_FUNCTIONS

---

* [4311_RETURN_RES_FROM_FUNC](#4311_RETURN_RES_FROM_FUNC)
* [4312_RETURN_RES_FROM_FUNC](#4312_RETURN_RES_FROM_FUNC)
* [4313_RETURN_RES_FROM_FUNC](#4313_RETURN_RES_FROM_FUNC)
* [4314_RETURN_RES_FROM_FUNC](#4314_RETURN_RES_FROM_FUNC)
* [4315_RETURN_RES_FROM_FUNC](#4315_RETURN_RES_FROM_FUNC)
* [4316_SUMMARY](#4316_SUMMARY)

---

#### 4311_RETURN_RES_FROM_FUNC

##### Effects and results: the return instruction

All the previously presented functions have some kind of effect - they produce some text and send it to the console.
Of course, functions - like their mathematical siblings - may have results.
To get functions to return a value (but not only for this purpose) you use the return instruction.
This word gives you a full picture of its capabilities. Note: it's a Python keyword.
The return instruction has two different variants - let's consider them separately.

##### return without an expression

The first consists of the keyword itself, without anything following it.
When used inside a function, it causes the immediate termination of the function's execution, and an instant return (hence the name) to the point of invocation.
Note: if a function is not intended to produce a result, using the return instruction is not obligatory - it will be executed implicitly at the end of the function.
Anyway, you can use it to terminate a function's activities on demand, before the control reaches the function's last line.

Let's consider the following function:

```py
def happy_new_year(wishes = True):
    print("Three...")
    print("Two...")
    print("One...")
    if not wishes:
        return

    print("Happy New Year!")
```

When invoked without any arguments:

```py
happy_new_year()
```

The function causes a little noise - the output will look like this:

```py
Three...
Two...
One...
Happy New Year!
```

Providing False as an argument:

```py
happy_new_year(False)
```

will modify the function's behavior - the return instruction will cause its termination just before the wishes - this is the updated output:

```py
Three...
Two...
One...
```

##### return with an expression

The second return variant is extended with an expression:

```py
def function():
    return expression
```

There are two consequences of using it:

- it causes the immediate termination of the function's execution (nothing new compared to the first variant)
- moreover, the function will evaluate the expression's value and will return (hence the name once again) it as the function's result.

Yes, we already know - this example isn't really sophisticated:

```py
def boring_function():
    return 123

x = boring_function()

print("The boring_function has returned its result. It's:", x)
```

The snippet writes the following text to the console:

```py
The boring_function has returned its result. It's: 123
```

Let's investigate it for a while.

The return instruction, enriched with the expression (the expression is very simple here), "transports" the expression's value to the place where the function has been invoked.

The result may be freely used here, e.g., to be assigned to a variable.

It may also be completely ignored and lost without a trace.


Note, we're not being too polite here - the function returns a value, and we ignore it (we don't use it in any way):

```py
def boring_function():
    print("'Boredom Mode' ON.")
    return 123

print("This lesson is interesting!")
boring_function()
print("This lesson is boring...")
```

The program produces the following output:

```py
This lesson is interesting!
'Boredom Mode' ON.
This lesson is boring...
```

Is it punishable? Not at all.

The only disadvantage is that the result has been irretrievably lost.

Don't forget:

- you are always allowed to ignore the function's result, and be satisfied with the function's effect (if the function has any)
- if a function is intended to return a useful result, it must contain the second variant of the return instruction.

Wait a minute - does this mean that there are useless results, too? Yes - in some sense.

[^^^](#43_WRITING_FUNCTIONS)

---

#### 4312_RETURN_RES_FROM_FUNC

##### A few words about None

Let us introduce you to a very curious value (to be honest, a none value) named None.

Its data doesn't represent any reasonable value - actually, it's not a value at all; hence, it mustn't take part in any expressions.

For example, a snippet like this:

```py
print(None + 2)
```

will cause a runtime error, described by the following diagnostic message:

```py
TypeError: unsupported operand type(s) for +: 'NoneType' and 'int'
```

Note: None is a keyword.

There are only two kinds of circumstances when None can be safely used:

- when you assign it to a variable (or return it as a function's result)
- when you compare it with a variable to diagnose its internal state.

Just like here:

```py
value = None
if value is None:
    print("Sorry, you don't carry any value")
```

Don't forget this: if a function doesn't return a certain value using a return expression clause, it is assumed that it implicitly returns None.

Let's test it.

[^^^](#43_WRITING_FUNCTIONS)

---

#### 4313_RETURN_RES_FROM_FUNC

##### A few words about None: continued

Take a look at the code in the editor.

It's obvious that the strangeFunction function returns True when its argument is even.

What does it return otherwise?

We can use the following code to check it:

```py
print(strange_function(2))
print(strange_function(1))
```

This is what we see in the console:

```py
True
None
```

Don't be surprised next time you see None as a function result - it may be the symptom of a subtle mistake inside the function.

```py
def strange_function(n):
    if(n % 2 == 0):
        return True

print(strange_function(2))
print(strange_function(1))

>>>
True
None
>>>
```

[^^^](#43_WRITING_FUNCTIONS)

---

#### 4314_RETURN_RES_FROM_FUNC

##### Effects and results: lists and functions

There are two additional questions that should be answered here.

The first is: may a list be sent to a function as an argument?

Of course it may! Any entity recognizable by Python can play the role of a function argument, although it has to be assured that the function is able to cope with it.

So, if you pass a list to a function, the function has to handle it like a list.

A function like this one here:

```py

def list_sum(lst):
    s = 0

    for elem in lst:
        s += elem

    return s
```

and invoked like this:

```py
print(list_sum([5, 4, 3]))
```

will return 12 as a result, but you should expect problems if you invoke it in this risky way:

```py
print(list_sum(5))
```

Python's response will be unequivocal:

```py
TypeError: 'int' object is not iterable
```

This is caused by the fact that a single integer value mustn't be iterated through by the for loop.

```py
def list_sum(lst):
    s = 0

    for elem in lst:
        s += elem

    return s

print(list_sum([5, 4, 3]))

>>>
12
>>>
```

[^^^](#43_WRITING_FUNCTIONS)

---

#### 4315_RETURN_RES_FROM_FUNC

##### Effects and results: lists and functions - continued

The second question is: may a list be a function result?

Yes, of course! Any entity recognizable by Python can be a function result.

Look at the code in the editor. The program's output will be like this:

```py
[4, 3, 2, 1, 0]
```

Now you can write functions with and without results.
Let's dive a little deeper into the issues connected with variables in functions. This is essential for creating effective and safe functions.

```py
def strange_list_fun(n):
    strange_list = []

    for i in range(0, n):
        strange_list.insert(0, i)

    return strange_list

print(strange_list_fun(5))

>>>
[4, 3, 2, 1, 0]
>>>
```

[^^^](#43_WRITING_FUNCTIONS)

---

#### 4316_SUMMARY

##### Key takeaways

1. You can use the return keyword to tell a function to return some value. The return statement exits the function, e.g.:

```py
def multiply(a, b):
    return a * b

print(multiply(3, 4))    # outputs: 12


def multiply(a, b):
    return

print(multiply(3, 4))    # outputs: None
```

2. The result of a function can be easily assigned to a variable, e.g.:

```py
def wishes():
    return "Happy Birthday!"

w = wishes()

print(w)    # outputs: Happy Birthday!
```

Look at the difference in output in the following two examples:

```py
# Example 1
def wishes():
    print("My Wishes")
    return "Happy Birthday"

wishes()    # outputs: My Wishes


# Example 2
def wishes():
    print("My Wishes")
    return "Happy Birthday"

print(wishes())

# outputs: My Wishes
#          Happy Birthday
```

3. You can use a list as a function's argument, e.g.:

```py
def hi_everybody(my_list):
    for name in my_list:
        print("Hi,", name)

hi_everybody(["Adam", "John", "Lucy"])
```

4. A list can be a function result, too, e.g.:

```py
def create_list(n):
    my_list = []
    for i in range(n):
        my_list.append(i)
    return my_list

print(create_list(5))
```

Exercise 1

What is the output of the following snippet?

```py
def hi():
    return
    print("Hi!")

hi()
```

```
the function will return an implicit None value
```

Exercise 2

What is the output of the following snippet?

```py
def is_int(data):
    if type(data) == int:
        return True
    elif type(data) == float:
        return False

print(is_int(5))
print(is_int(5.0))
print(is_int("5"))

>>>
True
False
None
>>>
```

Exercise 3

What is the output of the following snippet?

```py
def even_num_lst(ran):
    lst = []
    for num in range(ran):
        if num % 2 == 0:
            lst.append(num)
    return lst

print(even_num_lst(11))

>>>
[0, 2, 4, 6, 8, 10]
>>>
```

Exercise 4

What is the output of the following snippet?

```py
def list_updater(lst):
    upd_list = []
    for elem in lst:
        elem **= 2
        upd_list.append(elem)
    return upd_list

foo = [1, 2, 3, 4, 5]
print(list_updater(foo))

>>>
[1, 4, 9, 16, 25]
>>>
```

[^^^](#43_WRITING_FUNCTIONS)

---
