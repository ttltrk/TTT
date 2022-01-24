
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 43_WRITING_FUNCTIONS

---

* [4311_RETURN_RES_FROM_FUNC](#4311_RETURN_RES_FROM_FUNC)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### 4311_RETURN_RES_FROM_FUNC

##### Effects and results: the return instruction

All the previously presented functions have some kind of effect - they produce some text and send it to the console.
Of course, functions - like their mathematical siblings - may have results.
To get functions to return a value (but not only for this purpose) you use the return instruction.
This word gives you a full picture of its capabilities. Note: it's a Python keyword.
The return instruction has two different variants - let's consider them separately.
return without an expression
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

[^^^](#43_WRITING_FUNCTIONS)

---
