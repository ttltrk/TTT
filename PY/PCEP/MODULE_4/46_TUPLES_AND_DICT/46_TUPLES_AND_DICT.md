
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_4](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_4/MODULE_4.md)

---

#### 46_TUPLES_AND_DICT

---

* [4611_TUP_AND_DIC](#4611_TUP_AND_DIC)
* [4612_TUP_AND_DIC](#4612_TUP_AND_DIC)
* [4613_TUP_AND_DIC](#4613_TUP_AND_DIC)
* [4614_TUP_AND_DIC](#4614_TUP_AND_DIC)
* [4615_TUP_AND_DIC](#4615_TUP_AND_DIC)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### 4611_TUP_AND_DIC

##### Sequence types and mutability

Before we start talking about tuples and dictionaries, we have to introduce two important concepts: sequence types and mutability.

A sequence type is a type of data in Python which is able to store more than one value (or less than one, as a sequence may be empty), and these values can be sequentially (hence the name) browsed, element by element.

As the for loop is a tool especially designed to iterate through sequences, we can express the definition as: a sequence is data which can be scanned by the for loop.

You've encountered one Python sequence so far - the list. The list is a classic example of a Python sequence, although there are some other sequences worth mentioning, and we're going to present them to you now.

The second notion - mutability - is a property of any of Python's data that describes its readiness to be freely changed during program execution. There are two kinds of Python data: mutable and immutable.

Mutable data can be freely updated at any time - we call such an operation in situ.

In situ is a Latin phrase that translates as literally in position. For example, the following instruction modifies the data in situ:

```py
list.append(1)
```

Immutable data cannot be modified in this way.

Imagine that a list can only be assigned and read over. You would be able neither to append an element to it, nor remove any element from it. This means that appending an element to the end of the list would require the recreation of the list from scratch.

You would have to build a completely new list, consisting of the all elements of the already existing list, plus the new element.

The data type we want to tell you about now is a tuple. A tuple is an immutable sequence type. It can behave like a list, but it mustn't be modified in situ.

##### What is a tuple?

The first and the clearest distinction between lists and tuples is the syntax used to create them - tuples prefer to use parenthesis, whereas lists like to see brackets, although it's also possible to create a tuple just from a set of values separated by commas.

Look at the example:

```py
tuple_1 = (1, 2, 4, 8)
tuple_2 = 1., .5, .25, .125
```

There are two tuples, both containing four elements.

Let's print them:

```py
tuple_1 = (1, 2, 4, 8)
tuple_2 = 1., .5, .25, .125

print(tuple_1)
print(tuple_2)
```

This is what you should see in the console:

```py
(1, 2, 4, 8)
(1.0, 0.5, 0.25, 0.125)
```

Note: each tuple element may be of a different type (floating-point, integer, or any other not-as-yet-introduced kind of data).

##### How to create a tuple?

It is possible to create an empty tuple - parentheses are required then:

```py
empty_tuple = ()
```

If you want to create a one-element tuple, you have to take into consideration the fact that, due to syntax reasons (a tuple has to be distinguishable from an ordinary, single value), you must end the value with a comma:

```py
one_element_tuple_1 = (1, )
one_element_tuple_2 = 1.,
```

Removing the commas won't spoil the program in any syntactical sense, but you will instead get two single variables, not tuples.

[^^^](#46_TUPLES_AND_DICT)

---

#### 4612_TUP_AND_DIC

##### How to use a tuple?

If you want to get the elements of a tuple in order to read them over, you can use the same conventions to which you're accustomed while using lists.

Take a look at the code in the editor.

The program should produce the following output - run it and check:

```py
1
1000
(10, 100, 1000)
(1, 10)
1
10
100
1000
```

The similarities may be misleading - don't try to modify a tuple's contents! It's not a list!

All of these instructions (except the topmost one) will cause a runtime error:

```py
my_tuple = (1, 10, 100, 1000)

my_tuple.append(10000)
del my_tuple[0]
my_tuple[1] = -10
```

This is the message that Python will give you in the console window:

```py
AttributeError: 'tuple' object has no attribute 'append'
```

```py
my_tuple = (1, 10, 100, 1000)

print(my_tuple[0])
print(my_tuple[-1])
print(my_tuple[1:])
print(my_tuple[:-2])

for elem in my_tuple:
    print(elem)

>>>
1
1000
(10, 100, 1000)
(1, 10)
1
10
100
1000
>>>
```

[^^^](#46_TUPLES_AND_DICT)

---

#### 4613_TUP_AND_DIC

##### How to use a tuple: continued

What else can tuples do for you?

- the len() function accepts tuples, and returns the number of elements contained inside;
- the + operator can join tuples together (we've shown you this already)
- the * operator can multiply tuples, just like lists;
- the in and not in operators work in the same way as in lists.

The snippet in the editor presents them all.

The output should look as follows:

```py
9
(1, 10, 100, 1000, 10000)
(1, 10, 100, 1, 10, 100, 1, 10, 100)
True
True
```

One of the most useful tuple properties is their ability to appear on the left side of the assignment operator. You saw this phenomenon some time ago, when it was necessary to find an elegant tool to swap two variables' values.

Take a look at the snippet below:

```py
var = 123

t1 = (1, )
t2 = (2, )
t3 = (3, var)

t1, t2, t3 = t2, t3, t1

print(t1, t2, t3)
```

It shows three tuples interacting - in effect, the values stored in them "circulate" - t1 becomes t2, t2 becomes t3, and t3 becomes t1.

Note: the example presents one more important fact: a tuple's elements can be variables, not only literals. Moreover, they can be expressions if they're on the right side of the assignment operator.

```py
my_tuple = (1, 10, 100)

t1 = my_tuple + (1000, 10000)
t2 = my_tuple * 3

print(len(t2))
print(t1)
print(t2)
print(10 in my_tuple)
print(-10 not in my_tuple)

>>>
9
(1, 10, 100, 1000, 10000)
(1, 10, 100, 1, 10, 100, 1, 10, 100)
True
True
>>>
```

[^^^](#46_TUPLES_AND_DICT)

---

#### 4614_TUP_AND_DIC

##### What is a dictionary?

The dictionary is another Python data structure. It's not a sequence type (but can be easily adapted to sequence processing) and it is mutable.

To explain what the Python dictionary actually is, it is important to understand that it is literally a dictionary.

The Python dictionary works in the same way as a bilingual dictionary. For example, you have an English word (e.g., cat) and need its French equivalent. You browse the dictionary in order to find the word (you may use different techniques to do that - it doesn't matter) and eventually you get it. Next, you check the French counterpart and it is (most probably) the word "chat".

In Python's world, the word you look for is named a key. The word you get from the dictionary is called a value.

This means that a dictionary is a set of key-value pairs. Note:

- each key must be unique - it's not possible to have more than one key of the same value;
- a key may be any immutable type of object: it can be a number (integer or float), or even a string, but not a list;
- a dictionary is not a list - a list contains a set of numbered values, while a dictionary holds pairs of values;
- the len() function works for dictionaries, too - it returns the numbers of key-value elements in the dictionary;
- a dictionary is a one-way tool - if you have an English-French dictionary, you can look for French equivalents of English terms, but not vice versa.

Now we can show you some working examples.

##### How to make a dictionary?

If you want to assign some initial pairs to a dictionary, you should use the following syntax:

```py
dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
phone_numbers = {'boss': 5551234567, 'Suzy': 22657854310}
empty_dictionary = {}

print(dictionary)
print(phone_numbers)
print(empty_dictionary)
```

In the first example, the dictionary uses keys and values which are both strings. In the second one, the keys are strings, but the values are integers. The reverse layout (keys → numbers, values → strings) is also possible, as well as number-number combination.

The list of pairs is surrounded by curly braces, while the pairs themselves are separated by commas, and the keys and values by colons.

The first of our dictionaries is a very simple English-French dictionary. The second - a very tiny telephone directory.

The empty dictionaries are constructed by an empty pair of curly braces - nothing unusual.


The dictionary as a whole can be printed with a single print() invocation. The snippet may produce the following output:

```py
{'dog': 'chien', 'horse': 'cheval', 'cat': 'chat'}
{'Suzy': 5557654321, 'boss': 5551234567}
{}
```

Have you noticed anything surprising? The order of the printed pairs is different than in the initial assignment. What does that mean?

First of all, it's a confirmation that dictionaries are not lists - they don't preserve the order of their data, as the order is completely meaningless (unlike in real, paper dictionaries). The order in which a dictionary stores its data is completely out of your control, and your expectations. That's normal. (*)

NOTE

(*) In Python 3.6x dictionaries have become ordered collections by default. Your results may vary depending on what Python version you're using.

[^^^](#46_TUPLES_AND_DICT)

---

#### 4615_TUP_AND_DIC

##### How to use a dictionary?

If you want to get any of the values, you have to deliver a valid key value:

```py
print(dictionary['cat'])
print(phone_numbers['Suzy'])
```

Getting a dictionary's value resembles indexing, especially thanks to the brackets surrounding the key's value.

Note:

if the key is a string, you have to specify it as a string;
keys are case-sensitive: 'Suzy' is something different from 'suzy'.
The snippet outputs two lines of text:

```py
chat
5557654321
```

And now the most important news: you mustn't use a non-existent key. Trying something like this:

```py
print(phone_numbers['president'])
```

will cause a runtime error. Try to do it.


Fortunately, there's a simple way to avoid such a situation. The in operator, together with its companion, not in, can salvage this situation.

The following code safely searches for some French words:

```py
dictionary = {"cat": "chat", "dog": "chien", "horse": "cheval"}
words = ['cat', 'lion', 'horse']

for word in words:
    if word in dictionary:
        print(word, "->", dictionary[word])
    else:
        print(word, "is not in dictionary")
```
        
[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---

####

[^^^](#46_TUPLES_AND_DICT)

---
