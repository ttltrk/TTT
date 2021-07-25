
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### LOGICAL_CONTROL

---

```

```

---

* [IF_ELSE](#IF_ELSE)
* [FOR](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/FOR/FOR.md)
* [WHILE](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/WHILE/WHILE.md)
* [COMPUTER_LOGIC](#COMPUTER_LOGIC)
* [LOGICAL_EXPRESSION](#LOGICAL_EXPRESSION)
* [BITWISE_OPERATORS](#BITWISE_OPERATORS)

---

#### IF_ELSE

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

[^^^](#LOGICAL_CONTROL)

---

#### FOR

[^^^](#LOGICAL_CONTROL)

---

#### WHILE

[^^^](#LOGICAL_CONTROL)

---

#### COMPUTER_LOGIC

Have you noticed that the conditions we've used so far have been very simple, not to say, quite primitive? The conditions we use in real life are much more complex. Let's look at this sentence:

```
If we have some free time, and the weather is good, we will go for a walk.
```

We've used the conjunction and, which means that going for a walk depends on the simultaneous fulfilment of these two conditions. In the language of logic, such a connection of conditions is called a conjunction. And now another example:

```
If you are in the mall or I am in the mall, one of us will buy a gift for Mom.
```

The appearance of the word or means that the purchase depends on at least one of these conditions. In logic, such a compound is called a disjunction.

It's clear that Python must have operators to build conjunctions and disjunctions. Without them, the expressive power of the language would be substantially weakened. They're called logical operators.

##### - and

One logical conjunction operator in Python is the word and. It's a binary operator with a priority that is lower than the one expressed by the comparison operators. It allows us to code complex conditions without the use of parentheses like this one:

```
counter > 0 and value == 100
```

The result provided by the and operator can be determined on the basis of the truth table.
If we consider the conjunction of A and B, the set of possible values of arguments and corresponding values of the conjunction looks as follows:

```

Argument A	Argument B	A and B
False	      False	      False
False	      True	      False
True	      False	      False
True	      True	      True
```

##### - or

A disjunction operator is the word or. It's a binary operator with a lower priority than and (just like + compared to *). Its truth table is as follows:

```
Argument A	Argument B	A or B
False	      False	      False
False	      True	      True
True	      False	      True
True	      True	      True
```

##### - not

In addition, there's another operator that can be applied for constructing conditions. It's a unary operator performing a logical negation. Its operation is simple: it turns truth into falsehood and falsehood into truth.

This operator is written as the word not, and its priority is very high: the same as the unary + and -. Its truth table is simple:

```
Argument	not Argument
False	    True
True	    False
```

[^^^](#LOGICAL_CONTROL)

---

#### LOGICAL_EXPRESSION

```py
var = 1
# Example 1:
print(var > 0)
print(not (var <= 0))


# Example 2:
print(var != 0)
print(not (var == 0))

>>>
True
True
True
True
>>>
```

You may be familiar with De Morgan's laws. They say that:

- The negation of a conjunction is the disjunction of the negations.
- The negation of a disjunction is the conjunction of the negations.

Let's write the same thing using Python:

```
not (p and q) == (not p) or (not q)
not (p or q) == (not p) and (not q)
```

Note how the parentheses have been used to code the expressions - we put them there to improve readability.
We should add that none of these two-argument operators can be used in the abbreviated form known as op=. This exception is worth remembering.

Logical operators take their arguments as a whole regardless of how many bits they contain. The operators are aware only of the value: zero (when all the bits are reset) means False; not zero (when at least one bit is set) means True.

The result of their operations is one of these values: False or True. This means that this snippet will assign the value True to the j variable if i is not zero; otherwise, it will be False.

```py
i = 1
j = not not i
print(j)

>>>
True
>>>
```

[^^^](#LOGICAL_CONTROL)

---

#### BITWISE_OPERATORS

However, there are four operators that allow you to manipulate single bits of data. They are called bitwise operators.

They cover all the operations we mentioned before in the logical context, and one additional operator. This is the xor (as in exclusive or) operator, and is denoted as ^ (caret).

Here are all of them:

```
& (ampersand) - bitwise conjunction;
| (bar) - bitwise disjunction;
~ (tilde) - bitwise negation;
^ (caret) - bitwise exclusive or (xor).
```

```
Argument A	Argument B	A & B	 A | B	A ^ B
0	          0	          0	     0	    0
0	          1	          0	     1	    1
1	          0	          0	     1	    1
1	          1	          1	     1	    0
```

```
Argument	~ Argument
0	        1
1	        0
```

Let us add an important remark: the arguments of these operators must be integers; we must not use floats here.

The difference in the operation of the logical and bit operators is important: the logical operators do not penetrate into the bit level of its argument. They're only interested in the final integer value.

Bitwise operators are stricter: they deal with every bit separately. If we assume that the integer variable occupies 64 bits (which is common in modern computer systems), you can imagine the bitwise operation as a 64-fold evaluation of the logical operator for each pair of bits of the arguments. This analogy is obviously imperfect, as in the real world all these 64 operations are performed at the same time (simultaneously).

We'll now show you an example of the difference in operation between the logical and bit operations. Let's assume that the following assignments have been performed:

```
i = 15
j = 22
```

If we assume that the integers are stored with 32 bits, the bitwise image of the two variables will be as follows:

```
i: 00000000000000000000000000001111
j: 00000000000000000000000000010110
```

The assignment is given:

```
log = i and j
```

We are dealing with a logical conjunction here. Let's trace the course of the calculations. Both variables i and j are not zeros, so will be deemed to represent True. Consulting the truth table for the and operator, we can see that the result will be True. No other operations are performed.

```
log: True
```

Now the bitwise operation - here it is:

```
bit = i & j
```

The ```&``` operator will operate with each pair of corresponding bits separately, producing the values of the relevant bits of the result. Therefore, the result will be as follows:

```
i	            00000000000000000000000000001111
j	            00000000000000000000000000010110
bit = i & j	   00000000000000000000000000000110
```

These bits correspond to the integer value of six.

Let's look at the negation operators now. First the logical one:

```
logneg = not i
```

The logneg variable will be set to False - nothing more needs to be done.
The bitwise negation goes like this:

```
bitneg = ~i
```

It may be a bit surprising: the bitneg variable value is -16. This may seem strange, but isn't at all. If you wish to learn more, you should check out the binary numeral system and the rules governing two's complement numbers.

```
i	            00000000000000000000000000001111
bitneg = ~i	  11111111111111111111111111110000
```

Each of these two-argument operators can be used in abbreviated form. These are the examples of their equivalent notations:

```
x = x & y	  x &= y
x = x | y	  x |= y
x = x ^ y	  x ^= y
```

##### - How do we deal with single bits?

We'll now show you what you can use bitwise operators for. Imagine that you're a developer obliged to write an important piece of an operating system. You've been told that you're allowed to use a variable assigned in the following way:

```py
flag_register = 0x1234
```

The variable stores the information about various aspects of system operation. Each bit of the variable stores one yes/no value. You've also been told that only one of these bits is yours - the third (remember that bits are numbered from zero, and bit number zero is the lowest one, while the highest is number 31). The remaining bits are not allowed to change, because they're intended to store other data. Here's your bit marked with the letter x:

```py
flag_register = 0000000000000000000000000000x000
```

You may be faced with the following tasks:

1. Check the state of your bit - you want to find out the value of your bit; comparing the whole variable to zero will not do anything, because the remaining bits can have completely unpredictable values, but you can use the following conjunction property:

```py
x & 1 = x
x & 0 = 0
```

If you apply the & operation to the ```flag_register``` variable along with the following bit image:

```py
00000000000000000000000000001000
```

(note the 1 at your bit's position) as the result, you obtain one of the following bit strings:

- 00000000000000000000000000001000 if your bit was set to 1
- 0000000000000000000000000000000 if your bit was reset to 0

Such a sequence of zeros and ones, whose task is to grab the value or to change the selected bits, is called a bit mask.

Let's build a bit mask to detect the state of your bit. It should point to the third bit. That bit has the weight of ```23 = 8```. A suitable mask could be created by the following declaration:

```py
the_mask = 8
```

You can also make a sequence of instructions depending on the state of your bit i here it is:

```py
if flag_register & the_mask:
    # My bit is set.
else:
    # My bit is reset.
```

2. Reset your bit - you assign a zero to the bit while all the other bits must remain unchanged; let's use the same property of the conjunction as before, but let's use a slightly different mask - exactly as below:

```py
11111111111111111111111111110111
```

Note that the mask was created as a result of the negation of all the bits of ```the_mask``` variable. Resetting the bit is simple, and looks like this (choose the one you like more):

```py
flag_register = flag_register & ~the_mask
flag_register &= ~the_mask
```

3. Set your bit - you assign a 1 to your bit, while all the remaining bits must remain unchanged; use the following disjunction property:

```py
x | 1 = 1
x | 0 = x
```

You're now ready to set your bit with one of the following instructions:

```py
flag_register = flag_register | the_mask
flag_register |= the_mask
```

4. Negate your bit - you replace a 1 with a 0 and a 0 with a 1. You can use an interesting property of the xor operator:

```py
x ^ 1 = ~x
x ^ 0 = x
```

and negate your bit with the following instructions:

```py
flag_register = flag_register ^ the_mask
flag_register ^= the_mask
```

##### - Binary left shift and binary right shift

Python offers yet another operation relating to single bits: shifting. This is applied only to integer values, and you mustn't use floats as arguments for it.

You already apply this operation very often and quite unconsciously. How do you multiply any number by ten? Take a look:

```py
12345 × 10 = 123450
```

As you can see, multiplying by ten is in fact a shift of all the digits to the left and filling the resulting gap with zero.

Division by ten? Take a look:

```py
12340 ÷ 10 = 1234
```

Dividing by ten is nothing but shifting the digits to the right.

The same kind of operation is performed by the computer, but with one difference: as two is the base for binary numbers (not 10), shifting a value one bit to the left thus corresponds to multiplying it by two; respectively, shifting one bit to the right is like dividing by two (notice that the rightmost bit is lost).

The shift operators in Python are a pair of digraphs: << and >>, clearly suggesting in which direction the shift will act.

```py
value << bits
value >> bits
```

The left argument of these operators is an integer value whose bits are shifted. The right argument determines the size of the shift.

It shows that this operation is certainly not commutative.

The priority of these operators is very high. You'll see them in the updated table of priorities, which we'll show you at the end of this section.

Take a look at the shifts in the editor window.

The final ```print()``` invocation produces the following output:

```py
17 68 8
```

```py
var = 17
var_left = var << 2
var_right = var >> 1
print(var, var_left, var_right)

#17 >> 1 → 17 // 2 (17 floor-divided by 2 to the power of 1) → 8 (shifting to the right by one bit is the same as integer division by two)
#17 << 2 → 17 * 4 (17 multiplied by 2 to the power of 2) → 68 (shifting to the left by two bits is the same as integer multiplication by four)

>>>
17 68 8
>>>
```

And here is the updated priority table, containing all the operators introduced so far:

```
Priority	Operator
1	~, +, -	unary
2	**
3	*, /, //, %
4	+, -	binary
5	<<, >>
6	<, <=, >, >=
7	==, !=
8	&
9	|
10	=, +=, -=, *=, /=, %=, &=, ^=, |=, >>=, <<=
```

[^^^](#LOGICAL_CONTROL)

---
