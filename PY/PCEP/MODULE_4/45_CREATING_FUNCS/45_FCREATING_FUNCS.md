
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 45_FUNCTIONS

---

* [4511_CREATING_FUNC_2_PARAM](#4511_CREATING_FUNC_2_PARAM)
* [4512_CREATING_FUNC_2_PARAM](#4512_CREATING_FUNC_2_PARAM)
* [](#)
* [](#)
* [](#)

---

#### 4511_CREATING_FUNC_2_PARAM

##### Some simple functions: evaluating the BMI

Let's get started on a function to evaluate the Body Mass Index (BMI).

As you can see, the formula gets two values:

- weight (originally in kilograms)
- height (originally in meters)

It seems that this new function will have two parameters. Its name will be bmi, but if you prefer any other name, use it instead.

Let's code the function:

```py
def bmi(weight, height):
    return weight / height ** 2


print(bmi(52.5, 1.65))
```

The result produced by the sample invocation looks as follows:

```py
19.283746556473833
```

The function fulfils our expectations, but it's a bit simple - it assumes that the values of both parameters are always meaningful. It's definitely worth checking if they're trustworthy.

Let's check them both and return None if any of them looks suspicious.

[^^^](#45_FUNCTIONS)

---
