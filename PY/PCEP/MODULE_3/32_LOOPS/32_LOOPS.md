
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
* [3217_](#)
* [3218_](#)
* [3219_](#)
* [32110_](#)
* [32111_](#)

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
for i in range(100):
    # do_something()
    pass
```

There are some new elements. Let us tell you about them:

- the for keyword opens the for loop; note - there's no condition after it; you don't have to think about conditions, as they're checked internally, without any intervention;
- any variable after the for keyword is the control variable of the loop; it counts the loop's turns, and does it automatically;
- the in keyword introduces a syntax element describing the range of possible values being assigned to the control variable;
- the range() function (this is a very special function) is responsible for generating all the desired values of the control variable; in our example, the function will create (we can even say that it will feed the loop with) subsequent values from the following set: 0, 1, 2 .. 97, 98, 99; note: in this case, the range() function starts its job from 0 and finishes it one step (one integer number) before the value of its argument;
- note the pass keyword inside the loop body - it does nothing at all; it's an empty instruction - we put it here because the for loop's syntax demands at least one instruction inside the body (by the way - if, elif, else and while express the same thing)
Our next examples will be a bit more modest in the number of loop repetitions.

[^^^](#32_LOOPS)

---

#### 3215_FOR_2

[^^^](#32_LOOPS)

---

#### 3216_FOR_3

[^^^](#32_LOOPS)

---
