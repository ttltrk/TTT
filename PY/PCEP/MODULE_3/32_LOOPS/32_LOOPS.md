
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PCEP](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/PCEP.md) - [MODULE_3](https://github.com/ttltrk/TTT/blob/master/PY/PCEP/MODULE_3/MODULE_3.md)

---

#### 32_LOOPS

---

* [3211_WHILE_1](#3211_WHILE_1)
* [3212_WHILE_2](#3212_WHILE_2)
* [3213_WHILE_3](#3212_WHILE_3)
* [3214_FOR_1](#3214_FOR_1)
* [3215_FOR_2](#3214_FOR_2)
* [3216_FOR_3](#3216_FOR_3)
* [3217_BREAK_CONTINUE_1](#3217_BREAK_CONTINUE_1)
* [3218_BREAK_CONTINUE_2](#3218_BREAK_CONTINUE_2)
* [3219_LAB_1](#3219_LAB_1)
* [32110_LAB_2](#32110_LAB_2)
* [32111_LAB_3](#32111_LAB_3)
* [32112_WHILE_ELSE](#32112_WHILE_ELSE)
* [32113_FOR_ELSE](#32113_FOR_ELSE)
* [32114](#)
* [32115](#)
* [32116](#)
* [32117](#)

---

#### 3212_WHILE_1

##### Looping your code with while

Do you agree with the statement presented below?

```py
while there is something to do
    do it
```

Note that this record also declares that if there is nothing to do, nothing at all will happen.

In general, in Python, a loop can be represented as follows:

```py
while conditional_expression:
    instruction
```

If you notice some similarities to the if instruction, that's quite all right. Indeed, the syntactic difference is only one: you use the word while instead of the word if.

The semantic difference is more important: when the condition is met, if performs its statements only once; while repeats the execution as long as the condition evaluates to True.

Note: all the rules regarding indentation are applicable here, too. We'll show you this soon.

Look at the algorithm below:

```py
while conditional_expression:
    instruction_one
    instruction_two
    instruction_three
    :
    :
    instruction_n
```

It is now important to remember that:

- if you want to execute more than one statement inside one while, you must (as with if) indent all the instructions in the same way;
- an instruction or set of instructions executed inside the while loop is called the loop's body;
- if the condition is False (equal to zero) as early as when it is tested for the first time, the body is not executed even once (note the analogy of not having to do anything if there is nothing to do);
- the body should be able to change the condition's value, because if the condition is True at the beginning, the body might run continuously to infinity - notice that doing a thing usually decreases the number of things to do).

##### An infinite loop

An infinite loop, also called an endless loop, is a sequence of instructions in a program which repeat indefinitely (loop endlessly.)

Here's an example of a loop that is not able to finish its execution:

```py
while True:
    print("I'm stuck inside a loop.")
```

This loop will infinitely print "I'm stuck inside a loop." on the screen.

If you want to get the best learning experience from seeing how an infinite loop behaves, launch IDLE, create a New File, copy-paste the above code, save your file, and run the program. What you will see is the never-ending sequence of "I'm stuck inside a loop." strings printed to the Python console window. To terminate your program, just press Ctrl-C (or Ctrl-Break on some computers). This will cause the so-called KeyboardInterrupt exception and let your program get out of the loop. We'll talk about it later in the course.

Let's go back to the sketch of the algorithm we showed you recently. We're going to show you how to use this newly learned loop to find the largest number from a large set of entered data.

Analyze the program carefully. See where the loop starts (line 8). Locate the loop's body and find out how the body is exited:

```py
# Store the current largest number here.
largest_number = -999999999

# Input the first value.
number = int(input("Enter a number or type -1 to stop: "))

# If the number is not equal to -1, continue.
while number != -1:
    # Is number larger than largest_number?
    if number > largest_number:
        # Yes, update largest_number.
        largest_number = number
    # Input the next number.
    number = int(input("Enter a number or type -1 to stop: "))

# Print the largest number.
print("The largest number is:", largest_number)

>>>
Enter a number or type -1 to stop: 10
Enter a number or type -1 to stop: 2
Enter a number or type -1 to stop: -1
The largest number is: 10
>>>
```

[^^^](#32_LOOPS)

---

#### 3212_WHILE_2

##### The while loop: more examples

Let's look at another example employing the while loop. Follow the comments to find out the idea and the solution.

```py
# A program that reads a sequence of numbers
# and counts how many numbers are even and how many are odd.
# The program terminates when zero is entered.

odd_numbers = 0
even_numbers = 0

# Read the first number.
number = int(input("Enter a number or type 0 to stop: "))

# 0 terminates execution.
while number != 0:
    # Check if the number is odd.
    if number % 2 == 1:
        # Increase the odd_numbers counter.
        odd_numbers += 1
    else:
        # Increase the even_numbers counter.
        even_numbers += 1
    # Read the next number.
    number = int(input("Enter a number or type 0 to stop: "))

# Print results.
print("Odd numbers count:", odd_numbers)
print("Even numbers count:", even_numbers)

>>>
Enter a number or type 0 to stop: 2
Enter a number or type 0 to stop: 3
Enter a number or type 0 to stop: 4
Enter a number or type 0 to stop: 0
Odd numbers count: 1
Even numbers count: 2
>>>
```

Certain expressions can be simplified without changing the program's behavior.

Try to recall how Python interprets the truth of a condition, and note that these two forms are equivalent:

```py
while number != 0: and while number:.
```

The condition that checks if a number is odd can be coded in these equivalent forms, too:

```py
if number % 2 == 1: and if number % 2:.
```

##### Using a counter variable to exit a loop

Look at the snippet below:

```py
counter = 5
while counter != 0:
    print("Inside the loop.", counter)
    counter -= 1
print("Outside the loop.", counter)

>>>
Inside the loop. 5
Inside the loop. 4
Inside the loop. 3
Inside the loop. 2
Inside the loop. 1
Outside the loop. 0
>>>
```

This code is intended to print the string "Inside the loop." and the value stored in the counter variable during a given loop exactly five times. Once the condition has not been met (the counter variable has reached 0), the loop is exited, and the message "Outside the loop." as well as the value stored in counter is printed.

But there's one thing that can be written more compactly - the condition of the while loop.

Can you see the difference?

```py
counter = 5
while counter:
    print("Inside the loop.", counter)
    counter -= 1
print("Outside the loop.", counter)

>>>
Inside the loop. 5
Inside the loop. 4
Inside the loop. 3
Inside the loop. 2
Inside the loop. 1
Outside the loop. 0
>>>
```

Is it more compact than previously? A bit. Is it more legible? That's disputable.

REMEMBER

Don't feel obliged to code your programs in a way that is always the shortest and the most compact. Readability may be a more important factor. Keep your code ready for a new programmer.

[^^^](#32_LOOPS)

---

#### 3214_FOR_1

##### Looping your code with for

Another kind of loop available in Python comes from the observation that sometimes it's more important to count the "turns" of the loop than to check the conditions.

Imagine that a loop's body needs to be executed exactly one hundred times. If you would like to use the while loop to do it, it may look like this:

```py
i = 0
while i < 5:
    # do_something()
    i += 1
    print(i)

>>>
1
2
3
4
5
>>>
```

It would be nice if somebody could do this boring counting for you. Is that possible?

Of course it is - there's a special loop for these kinds of tasks, and it is named for.

Actually, the for loop is designed to do more complicated tasks - it can "browse" large collections of data item by item. We'll show you how to do that soon, but right now we're going to present a simpler variant of its application.

Take a look at the snippet:

```py
for i in range(5):
    print(i)

>>>
0
1
2
3
4
>>>    
```

There are some new elements. Let us tell you about them:

- the for keyword opens the for loop; note - there's no condition after it; you don't have to think about conditions, as they're checked internally, without any intervention;
- any variable after the for keyword is the control variable of the loop; it counts the loop's turns, and does it automatically;
- the in keyword introduces a syntax element describing the range of possible values being assigned to the control variable;
- the range() function (this is a very special function) is responsible for generating all the desired values of the control variable; in our example, the function will create (we can even say that it will feed the loop with) subsequent values from the following set: 0, 1, 2 .. 97, 98, 99; note: in this case, the range() function starts its job from 0 and finishes it one step (one integer number) before the value of its argument;
- note the pass keyword inside the loop body - it does nothing at all; it's an empty instruction - we put it here because the for loop's syntax demands at least one instruction inside the body (by the way - if, elif, else and while express the same thing)
Our next examples will be a bit more modest in the number of loop repetitions.

Take a look at the snippet below. Can you predict its output?

```py
for i in range(10):
    print("The value of i is currently", i)

>>>
The value of i is currently 0
The value of i is currently 1
The value of i is currently 2
The value of i is currently 3
The value of i is currently 4
The value of i is currently 5
The value of i is currently 6
The value of i is currently 7
The value of i is currently 8
The value of i is currently 9
>>>    
```

Run the code to check if you were right.

Note:

- the loop has been executed ten times (it's the range() function's argument)
- the last control variable's value is 9 (not 10, as it starts from 0, not from 1)

The range() function invocation may be equipped with two arguments, not just one:

```py
for i in range(2, 8):
    print("The value of i is currently", i)

>>>
The value of i is currently 2
The value of i is currently 3
The value of i is currently 4
The value of i is currently 5
The value of i is currently 6
The value of i is currently 7
>>>    
```

In this case, the first argument determines the initial (first) value of the control variable.
The last argument shows the first value the control variable will not be assigned.
Note: the range() function accepts only integers as its arguments, and generates sequences of integers.
Can you guess the output of the program? Run it to check if you were right now, too.
The first value shown is 2 (taken from the range()'s first argument.)
The last is 7 (although the range()'s second argument is 8).

[^^^](#32_LOOPS)

---

#### 3215_FOR_2

##### More about the for loop and the range() function with three arguments

The range() function may also accept three arguments - take a look at the code in the editor.

The third argument is an increment - it's a value added to control the variable at every loop turn (as you may suspect, the default value of the increment is 1).

Can you tell us how many lines will appear in the console and what values they will contain?

Run the program to find out if you were right.


You should be able to see the following lines in the console window:

```py
The value of i is currently 2
The value of i is currently 5
```

Do you know why? The first argument passed to the range() function tells us what the starting number of the sequence is (hence 2 in the output). The second argument tells the function where to stop the sequence (the function generates numbers up to the number indicated by the second argument, but does not include it). Finally, the third argument indicates the step, which actually means the difference between each number in the sequence of numbers generated by the function.

2 (starting number) → 5 (2 increment by 3 equals 5 - the number is within the range from 2 to 8) → 8 (5 increment by 3 equals 8 - the number is not within the range from 2 to 8, because the stop parameter is not included in the sequence of numbers generated by the function.)

Note: if the set generated by the range() function is empty, the loop won't execute its body at all.

Just like here - there will be no output:

```py
for i in range(1, 1):
    print("The value of i is currently", i)
>>>

>>>
```

Note: the set generated by the range() has to be sorted in ascending order. There's no way to force the range() to create a set in a different form when the range() function accepts exactly two arguments. This means that the range()'s second argument must be greater than the first.

Thus, there will be no output here, either:

```py
for i in range(2, 1):
    print("The value of i is currently", i)
>>>

>>>
```

Let's have a look at a short program whose task is to write some of the first powers of two:

```py
power = 1
for expo in range(16):
    print("2 to the power of", expo, "is", power)
    power *= 2

>>>
2 to the power of 0 is 1
2 to the power of 1 is 2
2 to the power of 2 is 4
2 to the power of 3 is 8
2 to the power of 4 is 16
2 to the power of 5 is 32
2 to the power of 6 is 64
2 to the power of 7 is 128
2 to the power of 8 is 256
2 to the power of 9 is 512
2 to the power of 10 is 1024
2 to the power of 11 is 2048
2 to the power of 12 is 4096
2 to the power of 13 is 8192
2 to the power of 14 is 16384
2 to the power of 15 is 32768
>>>    
```

The expo variable is used as a control variable for the loop, and indicates the current value of the exponent. The exponentiation itself is replaced by multiplying by two. Since 20 is equal to 1, then 2 × 1 is equal to 21, 2 × 21 is equal to 22, and so on. What is the greatest exponent for which our program still prints the result?

Run the code and check if the output matches your expectations.

```py
for i in range(2, 8, 3):
    print("The value of i is currently", i)

>>>
The value of i is currently 2
The value of i is currently 5
>>>
```

[^^^](#32_LOOPS)

---

#### 3216_FOR_3

[^^^](#32_LOOPS)

---

#### 3217_BREAK_CONTINUE_1

The break and continue statements
So far, we've treated the body of the loop as an indivisible and inseparable sequence of instructions that are performed completely at every turn of the loop. However, as developer, you could be faced with the following choices:

- it appears that it's unnecessary to continue the loop as a whole; you should refrain from further execution of the loop's body and go further;
- it appears that you need to start the next turn of the loop without completing the execution of the current turn.

Python provides two special instructions for the implementation of both these tasks. Let's say for the sake of accuracy that their existence in the language is not necessary - an experienced programmer is able to code any algorithm without these instructions. Such additions, which don't improve the language's expressive power, but only simplify the developer's work, are sometimes called syntactic candy, or syntactic sugar.

These two instructions are:

- break - exits the loop immediately, and unconditionally ends the loop's operation; the program begins to execute the nearest instruction after the loop's body;
- continue - behaves as if the program has suddenly reached the end of the body; the next turn is started and the condition expression is tested immediately.

Both these words are keywords.

Now we'll show you two simple examples to illustrate how the two instructions work. Look at the code in the editor. Run the program and analyze the output. Modify the code and experiment.

```py
# break - example

print("The break instruction:")
for i in range(1, 6):
    if i == 3:
        break
    print("Inside the loop.", i)
print("Outside the loop.")


# continue - example

print("\nThe continue instruction:")
for i in range(1, 6):
    if i == 3:
        continue
    print("Inside the loop.", i)
print("Outside the loop.")

>>>
The break instruction:
Inside the loop. 1
Inside the loop. 2
Outside the loop.

The continue instruction:
Inside the loop. 1
Inside the loop. 2
Inside the loop. 4
Inside the loop. 5
Outside the loop.
>>>
```

[^^^](#32_LOOPS)

---

#### 3218_BREAK_CONTINUE_2

The break and continue statements: more examples
Let's return to our program that recognizes the largest among the entered numbers. We'll convert it twice, using the break and continue instructions.

Analyze the code, and judge whether and how you would use either of them.

The break variant goes here:

```py
largest_number = -99999999
counter = 0

while True:
    number = int(input("Enter a number or type -1 to end program: "))
    if number == -1:
        break
    counter += 1
    if number > largest_number:
        largest_number = number

if counter != 0:
    print("The largest number is", largest_number)
else:
    print("You haven't entered any number.")

>>>
Enter a number or type -1 to end program: 5
Enter a number or type -1 to end program: -1
The largest number is 5
>>>
```

Run it, test it, and experiment with it.

And now the continue variant:

```py
largest_number = -99999999
counter = 0

number = int(input("Enter a number or type -1 to end program: "))

while number != -1:
    if number == -1:
        continue
    counter += 1

    if number > largest_number:
        largest_number = number
    number = int(input("Enter a number or type -1 to end program: "))

if counter:
    print("The largest number is", largest_number)
else:
    print("You haven't entered any number.")

>>>
Enter a number or type -1 to end program: 5
Enter a number or type -1 to end program: 6
Enter a number or type -1 to end program: 9
Enter a number or type -1 to end program: -1
The largest number is 9
>>>
```

Look carefully, the user enters the first number before the program enters the while loop. The subsequent number is entered when the program is already in the loop.

Again - run the program, test it, and experiment with it.

[^^^](#32_LOOPS)

---

#### 32112_WHILE_ELSE

##### The while loop and the else branch

Both loops, while and for, have one interesting (and rarely used) feature.
We'll show you how it works - try to judge for yourself if it's usable and whether you can live without it or not.
In other words, try to convince yourself if the feature is valuable and useful, or is just syntactic sugar.
Take a look at the snippet in the editor. There's something strange at the end - the else keyword.
As you may have suspected, loops may have the else branch too, like ifs.
The loop's else branch is always executed once, regardless of whether the loop has entered its body or not.
Can you guess the output? Run the program to check if you were right.
Modify the snippet a bit so that the loop has no chance to execute its body even once:

```py
i = 5
while i < 5:
    print(i)
    i += 1
else:
    print("else:", i)

>>>
else: 5
>>>    
```

The while's condition is False at the beginning - can you see it?
Run and test the program, and check whether the else branch has been executed or not.

```py
i = 1
while i < 5:
    print(i)
    i += 1
else:
    print("else:", i)

>>>
1
2
3
4
else: 5
>>>
```

[^^^](#32_LOOPS)

---

#### 32113_FOR_ELSE

##### The for loop and the else branch

for loops behave a bit differently - take a look at the snippet in the editor and run it.
The output may be a bit surprising.
The i variable retains its last value.
Modify the code a bit to carry out one more experiment.

```py
i = 111
for i in range(2, 1):
    print(i)
else:
    print("else:", i)

>>>
else: 111
>>>
```

Can you guess the output?
The loop's body won't be executed here at all. Note: we've assigned the i variable before the loop.
Run the program and check its output.
When the loop's body isn't executed, the control variable retains the value it had before the loop.

Note: if the control variable doesn't exist before the loop starts, it won't exist when the execution reaches the else branch.

How do you feel about this variant of else?

Now we're going to tell you about some other kinds of variables. Our current variables can only store one value at a time, but there are variables that can do much more - they can store as many values as you want.

[^^^](#32_LOOPS)

---
