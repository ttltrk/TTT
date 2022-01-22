
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

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---

####

```py

```

[^^^](#42_FUNCTIONS)

---
