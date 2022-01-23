
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 42_FUN_PARAM_ARG_PASSING

---

* [4211_HOW_FUNC_COMMUNICATE](#4211_HOW_FUNC_COMMUNICATE)
* [4212_HOW_FUNC_COMMUNICATE](#4212_HOW_FUNC_COMMUNICATE)
* [4213_HOW_FUNC_COMMUNICATE](#4213_HOW_FUNC_COMMUNICATE)
* [4214_HOW_FUNC_COMMUNICATE](#4214_HOW_FUNC_COMMUNICATE)
* [4215_HOW_FUNC_COMMUNICATE](#4215_HOW_FUNC_COMMUNICATE)
* [4216_HOW_FUNC_COMMUNICATE](#4216_HOW_FUNC_COMMUNICATE)
* [4217_HOW_FUNC_COMMUNICATE](#4217_HOW_FUNC_COMMUNICATE)
* [4218_SUMMARY](#4218_SUMMARY)

---

#### 4211_HOW_FUNC_COMMUNICATE

##### Parameterized functions

The function's full power reveals itself when it can be equipped with an interface that is able to accept data provided by the invoker. Such data can modify the function's behavior, making it more flexible and adaptable to changing conditions.

A parameter is actually a variable, but there are two important factors that make parameters different and special:

- parameters exist only inside functions in which they have been defined, and the only place where the parameter can be defined is a space between a pair of parentheses in the def statement;
- assigning a value to the parameter is done at the time of the function's invocation, by specifying the corresponding argument.

```py
def function(parameter):
    ###
```

Don't forget:

- parameters live inside functions (this is their natural environment)
- arguments exist outside functions, and are carriers of values passed to corresponding parameters.

There is a clear and unambiguous frontier between these two worlds.

Let's enrich the function above with just one parameter - we're going to use it to show the user the number of a value the function asks for.

We have to rebuild the def statement - this is how it looks now:

```py
def message(number):
    ###
```

The definition specifies that our function operates on just one parameter named number. You can use it as an ordinary variable, but only inside the function - it isn't visible anywhere else.

Let's now improve the function's body:

```py
def message(number):
    print("Enter a number:", number)
```

We've made use of the parameter. Note: we haven't assigned the parameter with any value. Is it correct?

Yes, it is.

A value for the parameter will arrive from the function's environment.

Remember: specifying one or more parameters in a function's definition is also a requirement, and you have to fulfil it during invocation. You must provide as many arguments as there are defined parameters.

Failure to do so will cause an error.

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4212_HOW_FUNC_COMMUNICATE

##### Parametrized functions: continued

Try to run the code in the editor.

This is what you'll see in the console:

```py
TypeError: message() missing 1 required positional argument: 'number'
```

This looks better, for sure:

```py
def message(number):
    print("Enter a number:", number)

message(1)
```

Moreover, it behaves better. The code will produce the following output:

```py
Enter a number: 1
```

Can you see how it works? The value of the argument used during invocation (1) has been passed into the function, setting the initial value of the parameter named number.

We have to make you sensitive to one important circumstance.

It's legal, and possible, to have a variable named the same as a function's parameter.

The snippet illustrates the phenomenon:

```py
def message(number):
    print("Enter a number:", number)

number = 1234
message(1)
print(number)
```

A situation like this activates a mechanism called shadowing:

- parameter x shadows any variable of the same name, but...
- ... only inside the function defining the parameter.

The parameter named number is a completely different entity from the variable named number.

This means that the snippet above will produce the following output:

```py
Enter a number: 1
1234
```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4213_HOW_FUNC_COMMUNICATE

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4214_HOW_FUNC_COMMUNICATE

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4215_HOW_FUNC_COMMUNICATE

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4216_HOW_FUNC_COMMUNICATE

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4217_HOW_FUNC_COMMUNICATE

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---

#### 4218_SUMMARY

```py

```

[^^^](#42_FUN_PARAM_ARG_PASSING)

---
