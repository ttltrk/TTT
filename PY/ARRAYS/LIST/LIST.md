
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
