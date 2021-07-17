
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGICAL_CONTROL](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/LOGICAL_CONTROL.md)

---

### IF_ELSE

---

```

```

---

* [IF_ELSE_BASICS](#IF_ELSE_BASICS)
* [CONDITIONS](#CONDITIONS)
* [IF](#IF)
* [THE_IF_STATEMENT](#THE_IF_STATEMENT)
* [IF_ELSE](#IF_ELSE)
* [THE_IF_ELSE_STATEMENT](#THE_IF_ELSE_STATEMENT)
* [IF_ELIF_ELSE](#IF_ELIF_ELSE)
* [THE_ELIF_STATEMENT](#THE_ELIF_STATEMENT)
* [NESTED_IF](#NETSED_IF)
* [NESTED_IF_ELSE](#NESTED_IF_ELSE)
* [EVEN_OR_ODD](#EVEN_OR_ODD)
* [MAX](#MAX)

---

#### IF_ELSE_BASICS

```

```

```py
if some_condition:
    # execute some code
elif some_other_condition:
    # do something different
else:
    # do something else
```

[^^^](#IF_ELSE)

---

#### CONDITIONS

You already know how to ask Python questions, but you still don't know how to make reasonable use of the answers. You have to have a mechanism which will allow you to do something if a condition is met, and not do it if it isn't.

It's just like in real life: you do certain things or you don't when a specific condition is met or not, e.g., you go for a walk if the weather is good, or stay home if it's wet and cold.

To make such decisions, Python offers a special instruction. Due to its nature and its application, it's called a conditional instruction (or conditional statement).

There are several variants of it. We'll start with the simplest, increasing the difficulty slowly.

The first form of a conditional statement, which you can see below is written very informally but figuratively:

```py
if true_or_not:
    do_this_if_true
```

This conditional statement consists of the following, strictly necessary, elements in this and this order only:

- the if keyword;
- one or more white spaces;
- an expression (a question or an answer) whose value will be interpreted solely in terms of True (when its value is non-zero) and False (when it is equal to zero);
- a colon followed by a newline;
- an indented instruction or set of instructions (at least one instruction is absolutely required); the indentation may be achieved in two ways - by inserting a particular number of spaces (the recommendation is to use four spaces of indentation), or by using the tab character; note: if there is more than one instruction in the indented part, the indentation should be the same in all lines; even though it may look the same if you use tabs mixed with spaces, it's important to make all indentations exactly the same - Python 3 does not allow mixing spaces and tabs for indentation.

How does that statement work?

- If the true_or_not expression represents the truth (i.e., its value is not equal to zero), the indented statement(s) will be executed;
- if the true_or_not expression does not represent the truth (i.e., its value is equal to zero), the indented statement(s) will be omitted (ignored), and the next executed instruction will be the one after the original indentation level.

In real life, we often express a desire:

if the weather is good, we'll go for a walk

then, we'll have lunch


As you can see, having lunch is not a conditional activity and doesn't depend on the weather.

Knowing what conditions influence our behavior, and assuming that we have the parameterless functions ```go_for_a_walk()``` and ```have_lunch()```, we can write the following snippet:

```py
if the_weather_is_good:
    go_for_a_walk()
have_lunch()
```

[^^^](#IF_ELSE)

---

#### IF

```

```

```py
a = 33
b = 200

if b > a:
    print("b is greater than a")

>>>
b is greater than a
>>>
```

```py
num1 = 3
if num1 > 0:
    print(num1, "is a positive number.")
print("This is always printed. with num1")

num2 = -1
if num2 > 0:
    print(num2, "is a positive number.")
print("This is also always printed. num2")

>>>
3 is a positive number.
This is always printed with num1
This is also always printed with num2
>>>
```

[^^^](#IF_ELSE)

---

##### THE_IF_STATEMENT

If a certain sleepless Python developer falls asleep when he or she counts 120 sheep, and the sleep-inducing procedure may be implemented as a special function named ```sleep_and_dream()```, the whole code takes the following shape:

```py
if sheep_counter >= 120: # Evaluate a test expression
    sleep_and_dream() # Execute if test expression is True
```

You can read it as: if sheep_counter is greater than or equal to 120, then fall asleep and dream (i.e., execute the sleep_and_dream function.)

We've said that conditionally executed statements have to be indented. This creates a very legible structure, clearly demonstrating all possible execution paths in the code.

Take a look at the following code:

```py
if sheep_counter >= 120:
    make_a_bed()
    take_a_shower()
    sleep_and_dream()
feed_the_sheepdogs()
```

As you can see, making a bed, taking a shower and falling asleep and dreaming are all executed conditionally - when sheep_counter reaches the desired limit.

Feeding the sheepdogs, however, is always done (i.e., the ```feed_the_sheepdogs()``` function is not indented and does not belong to the if block, which means it is always executed.)

Now we're going to discuss another variant of the conditional statement, which also allows you to perform an additional action when the condition is not met.

[^^^](#IF_ELSE)

---

#### IF_ELSE

```

```

```py
num = 3

if num >= 0:
    print("Positive or Zero")
else:
    print("Negative number")

>>>
Positive or Zero
>>>
```

[^^^](#IF_ELSE)

---

#### THE_IF_ELSE_STATEMENT

We started out with a simple phrase which read: If the weather is good, we will go for a walk.

Note - there is not a word about what will happen if the weather is bad. We only know that we won't go outdoors, but what we could do instead is not known. We may want to plan something in case of bad weather, too.

We can say, for example: If the weather is good, we will go for a walk, otherwise we will go to a theater.

Now we know what we'll do if the conditions are met, and we know what we'll do if not everything goes our way. In other words, we have a "Plan B".

Python allows us to express such alternative plans. This is done with a second, slightly more complex form of the conditional statement, the if-else statement:

```py
if true_or_false_condition:
    perform_if_condition_true
else:
    perform_if_condition_false
```

Thus, there is a new word: else - this is a keyword.

The part of the code which begins with else says what to do if the condition specified for the if is not met (note the colon after the word).

The if-else execution goes as follows:

- if the condition evaluates to True (its value is not equal to zero), the perform_if_condition_true statement is executed, and the conditional statement comes to an end;
- if the condition evaluates to False (it is equal to zero), the perform_if_condition_false statement is executed, and the conditional statement comes to an end.

By using this form of conditional statement, we can describe our plans as follows:

```py
if the_weather_is_good:
    go_for_a_walk()
else:
    go_to_a_theater()
have_lunch()
```

If the weather is good, we'll go for a walk. Otherwise, we'll go to a theatre. No matter if the weather is good or bad, we'll have lunch afterwards (after the walk or after going to the theatre).

Everything we've said about indentation works in the same manner inside the else branch:

```py
if the_weather_is_good:
    go_for_a_walk()
    have_fun()
else:
    go_to_a_theater()
    enjoy_the_movie()
have_lunch()
```

[^^^](#IF_ELSE)

---

#### IF_ELIF_ELSE

```

```

```py
num = 3.4

if num > 0:
    print("Positive number")
elif num == 0:
    print("Zero")
else:
    print("Negative number")

>>>
Positive number
>>>
```

```py
a = 200
b = 33

if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")

>>>
a is greater than b
>>>
```

```py
a = 33
b = 33

if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")

>>>
a and b are equal
>>>
```

[^^^](#IF_ELSE)

---

#### THE_ELIF_STATEMENT

The second special case introduces another new Python keyword: elif. As you probably suspect, it's a shorter form of else if.

elif is used to check more than just one condition, and to stop when the first statement which is true is found.

Our next example resembles nesting, but the similarities are very slight. Again, we'll change our plans and express them as follows: If the weather is fine, we'll go for a walk, otherwise if we get tickets, we'll go to the theater, otherwise if there are free tables at the restaurant, we'll go for lunch; if all else fails, we'll return home and play chess.

Have you noticed how many times we've used the word otherwise? This is the stage where the elif keyword plays its role.

Let's write the same scenario using Python:

```py
if the_weather_is_good:
    go_for_a_walk()
elif tickets_are_available:
    go_to_the_theater()
elif table_is_available:
    go_for_lunch()
else:
    play_chess_at_home()
```

The way to assemble subsequent if-elif-else statements is sometimes called a cascade.

Notice again how the indentation improves the readability of the code.

Some additional attention has to be paid in this case:

- you mustn't use else without a preceding if;
- else is always the last branch of the cascade, regardless of whether you've used elif or not;
- else is an optional part of the cascade, and may be omitted;
- if there is an else branch in the cascade, only one of all the branches is executed;
- if there is no else branch, it's possible that none of the available branches is executed.

This may sound a little puzzling, but hopefully some simple examples will help shed more light.

[^^^](#IF_ELSE)

---

#### NESTED_IF

```

```

```py
num = float(input("Enter a number: "))

if num >= 0:
    if num == 0:
        print("Zero")
    else:
        print("Positive number")
else:
    print("Negative number")

>>>
Enter a number:  10
Positive number
>>>

>>>
Enter a number:  0
Zero
>>>

>>>
Enter a number:  -2
Negative number
>>>
```

[^^^](#IF_ELSE)

---

#### NESTED_IF_ELSE

Now let's discuss two special cases of the conditional statement.

First, consider the case where the instruction placed after the if is another if.

Read what we have planned for this Sunday. If the weather is fine, we'll go for a walk. If we find a nice restaurant, we'll have lunch there. Otherwise, we'll eat a sandwich. If the weather is poor, we'll go to the theater. If there are no tickets, we'll go shopping in the nearest mall.

Let's write the same in Python. Consider carefully the code here:

```py
if the_weather_is_good:
    if nice_restaurant_is_found:
        have_lunch()
    else:
        eat_a_sandwich()
else:
    if tickets_are_available:
        go_to_the_theater()
    else:
        go_shopping()
```

Here are two important points:

- this use of the if statement is known as nesting; remember that every else refers to the if which lies at the same indentation level; you need to know - this to determine how the ifs and elses pair up;
- consider how the indentation improves readability, and makes the code easier to understand and trace.

[^^^](#IF_ELSE)

---

#### EVEN_OR_ODD

```

```

```py
def even_or_odd(number):
    e = 'Even'
    o = 'Odd'
    if number % 2 == 0:
        return e
    else:
        return o

print(even_or_odd(2))

>>>
Even
>>>
```

[^^^](#IF_ELSE)

---

#### CONDITIONS

You already know how to ask Python questions, but you still don't know how to make reasonable use of the answers. You have to have a mechanism which will allow you to do something if a condition is met, and not do it if it isn't.

It's just like in real life: you do certain things or you don't when a specific condition is met or not, e.g., you go for a walk if the weather is good, or stay home if it's wet and cold.

To make such decisions, Python offers a special instruction. Due to its nature and its application, it's called a conditional instruction (or conditional statement).

There are several variants of it. We'll start with the simplest, increasing the difficulty slowly.

The first form of a conditional statement, which you can see below is written very informally but figuratively:

```py
if true_or_not:
    do_this_if_true
```

This conditional statement consists of the following, strictly necessary, elements in this and this order only:

- the if keyword;
- one or more white spaces;
- an expression (a question or an answer) whose value will be interpreted solely in terms of True (when its value is non-zero) and False (when it is equal to zero);
- a colon followed by a newline;
- an indented instruction or set of instructions (at least one instruction is absolutely required); the indentation may be achieved in two ways - by inserting a particular number of spaces (the recommendation is to use four spaces of indentation), or by using the tab character; note: if there is more than one instruction in the indented part, the indentation should be the same in all lines; even though it may look the same if you use tabs mixed with spaces, it's important to make all indentations exactly the same - Python 3 does not allow mixing spaces and tabs for indentation.

How does that statement work?

- If the true_or_not expression represents the truth (i.e., its value is not equal to zero), the indented statement(s) will be executed;
- if the true_or_not expression does not represent the truth (i.e., its value is equal to zero), the indented statement(s) will be omitted (ignored), and the next executed instruction will be the one after the original indentation level.

In real life, we often express a desire:

if the weather is good, we'll go for a walk

then, we'll have lunch


As you can see, having lunch is not a conditional activity and doesn't depend on the weather.

Knowing what conditions influence our behavior, and assuming that we have the parameterless functions ```go_for_a_walk()``` and ```have_lunch()```, we can write the following snippet:

```py
if the_weather_is_good:
    go_for_a_walk()
have_lunch()
```

[^^^](#IF_ELSE)

---

Python often comes with a lot of built-in functions that will do the work for you. For example, to find the largest number of all, you can use a Python built-in function called max(). You can use it with multiple arguments. Analyze the code below:

```py
number1 = int(input("Enter the first number: "))
number2 = int(input("Enter the second number: "))
number3 = int(input("Enter the third number: "))

# Check which one of the numbers is the greatest
# and pass it to the largest_number variable.

largest_number = max(number1, number2, number3)

# Print the result.
print("The largest number is:", largest_number)

>>>
Enter the first number: 2
Enter the second number: 33
Enter the third number: 45
The largest number is: 45
>>>
```

By the same fashion, you can use the ```min()``` function to return the lowest number. You can rebuild the above code and experiment with it in the Sandbox.

We're going to talk about these (and many other) functions soon. For the time being, our focus will be put on conditional execution and loops to let you gain more confidence in programming and teach you the skills that will let you fully understand and apply the two concepts in your code. So, for now, we're not taking any shortcuts.

[^^^](#IF_ELSE)

---
