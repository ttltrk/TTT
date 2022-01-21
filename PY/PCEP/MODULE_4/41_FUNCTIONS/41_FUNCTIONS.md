
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 41_FUNCTIONS

##### Why do we need functions?

You've come across functions many times so far, but the view on their merits that we have given you has been rather one-sided. You've only invoked the functions by using them as tools to make life easier, and to simplify time-consuming and tedious tasks.

When you want some data to be printed on the console, you use ```print()```. When you want to read the value of a variable, you use ```input()```, coupled with either ```int()``` or ```float()```.

You've also made use of some methods, which are in fact functions, but declared in a very specific way.

Now you'll learn how to write your own functions, and how to use them. We'll write several functions together, from the very simple to the rather complex, which will require your focus and attention.

It often happens that a particular piece of code is repeated many times in your program. It's repeated either literally, or with only a few minor modifications, consisting of the use of other variables in the same algorithm. It also happens that a programmer cannot resist simplifying the work, and begins to clone such pieces of code using the clipboard and copy-paste operations.

It could end up as greatly frustrating when suddenly it turns out that there was an error in the cloned code. The programmer will have a lot of drudgery to find all the places that need corrections. There's also a high risk of the corrections causing errors.

We can now define the first condition which can help you decide when to start writing your own functions: if a particular fragment of the code begins to appear in more than one place, consider the possibility of isolating it in the form of a function invoked from the points where the original code was placed before.


It may happen that the algorithm you're going to implement is so complex that your code begins to grow in an uncontrolled manner, and suddenly you notice that you're not able to navigate through it so easily anymore.


You can try to cope with the issue by commenting the code extensively, but soon you find that this dramatically worsens your situation - too many comments make the code larger and harder to read. Some say that a well-written function should be viewed entirely in one glance.

A good and attentive developer divides the code (or more accurately: the problem) into well-isolated pieces, and encodes each of them in the form of a function.

This considerably simplifies the work of the program, because each piece of code can be encoded separately, and tested separately. The process described here is often called decomposition.

We can now state the second condition: if a piece of code becomes so large that reading and understating it may cause a problem, consider dividing it into separate, smaller problems, and implement each of them in the form of a separate function.

This decomposition continues until you get a set of short functions, easy to understand and test.

[^^^](#41_FUNCTIONS)

---
