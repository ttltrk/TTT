
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 44_WRITING_FUNCTIONS

---

* [4411_SCOPES_IN_PYTHON](#4411_SCOPES_IN_PYTHON)
* [4412_SCOPES_IN_PYTHON](#4412_SCOPES_IN_PYTHON)
* [4413_SCOPES_IN_PYTHON](#4413_SCOPES_IN_PYTHON)
* [4414_SCOPES_IN_PYTHON](#4414_SCOPES_IN_PYTHON)
* [4415_SCOPES_IN_PYTHON](#4415_SCOPES_IN_PYTHON)

---

#### 4411_SCOPES_IN_PYTHON

##### Functions and scopes

Let's start with a definition:
The scope of a name (e.g., a variable name) is the part of a code where the name is properly recognizable.
For example, the scope of a function's parameter is the function itself. The parameter is inaccessible outside the function.
Let's check it. Look at the code in the editor. What will happen when you run it?
The program will fail when run. The error message will read:

```py
NameError: name 'x' is not defined
```

This is to be expected.
We're going to conduct some experiments with you to show you how Python constructs scopes, and how you can use its habits to your benefit.

```py
def scope_test():
    x = 123


scope_test()
print(x)

>>>
Traceback (most recent call last):
  File "main.py", line 6, in <module>
    print(x)
NameError: name 'x' is not defined
>>>
```

[^^^](#44_WRITING_FUNCTIONS)

---

#### 4412_SCOPES_IN_PYTHON

##### Functions and scopes: continued

Let's start by checking whether or not a variable created outside any function is visible inside the functions. In other words, does a variable's name propagate into a function's body?
Look at the code in the editor. Our guinea pig is there.
The result of the test is positive - the code outputs:

```py
Do I know that variable? 1
1
```

The answer is: a variable existing outside a function has a scope inside the functions' bodies.
This rule has a very important exception. Let's try to find it.
Let's make a small change to the code:

```py
def my_function():
    var = 2
    print("Do I know that variable?", var)


var = 1
my_function()
print(var)
```

The result has changed, too - the code produces a slightly different output now:

```py
Do I know that variable? 2
1
```

What's happened?

- the var variable created inside the function is not the same as when defined outside it - it seems that there two different variables of the same name;
- moreover, the function's variable shadows the variable coming from the outside world.

We can make the previous rule more precise and adequate:

A variable existing outside a function has a scope inside the functions' bodies, excluding those of them which define a variable of the same name.

It also means that the scope of a variable existing outside a function is supported only when getting its value (reading). Assigning a value forces the creation of the function's own variable.

Make sure you understand this well and carry out your own experiments.

```py
def my_function():
    print("Do I know that variable?", var)


var = 1
my_function()
print(var)

>>>
Do I know that variable? 1
1
>>>
```

[^^^](#44_WRITING_FUNCTIONS)

---

####

[^^^](#44_WRITING_FUNCTIONS)

---

####

[^^^](#44_WRITING_FUNCTIONS)

---
