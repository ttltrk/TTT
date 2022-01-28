
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
