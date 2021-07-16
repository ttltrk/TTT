
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [LOGICAL_CONTROL](https://github.com/ttltrk/TTT/blob/master/PY/LOGICAL_CONTROL/LOGICAL_CONTROL.md)

---

### FOR

---

```

```

---

* [BASICS](#BASICS)
* [RANGE](#RANGE)
* [ODD_AND_EVEN](#ODD_AND_EVEN)
* [SUM_OF_THE_LIST](#SUM_OF_THE_LIST)
* [MULTIPLY_2_LISTS](#MULTIPLY_2_LISTS)
* [ITERATE_A_STR](#ITERATE_A_STR)
* [ITERATE_TUPLES](#ITERATE_TUPLES)
* [ITERATE_DICT](#ITERATE_DICT)
* [FOR_WITH_ELSE](#FOR_WITH_ELSE)
* [FOR_WITH_RANGE](#FOR_WITH_RANGE)
* [PASS_FOR](#PASS_FOR)
* [BREAK_CONTINUE](#BREAK_CONTINUE)
* [CONTINUE_FOR](#CONTINUE_FOR)
* [BREAK_FOR](#BREAK_FOR)
* [ENUMERATE_FOR](#ENUMERATE_FOR)

---

#### BASICS

```py
for i in range(100):
    # do_something()
    pass
```

There are some new elements. Let us tell you about them:

- the for keyword opens the for loop; note - there's no condition after it; you don't have to think about conditions, as they're checked internally, without any intervention;
- any variable after the for keyword is the control variable of the loop; it counts the loop's turns, and does it automatically;
- the in keyword introduces a syntax element describing the range of possible values being assigned to the control variable;
- the ```range()``` function (this is a very special function) is responsible for generating all the desired values of the control variable; in our example, the function will create (we can even say that it will feed the loop with) subsequent values from the following set: 0, 1, 2 .. 97, 98, 99; note: in this case, the ```range()``` function starts its job from 0 and finishes it one step (one integer number) before the value of its argument;
- note the pass keyword inside the loop body - it does nothing at all; it's an empty instruction - we put it here because the for loop's syntax demands at least one instruction inside the body (by the way - if, elif, else and while express the same thing)

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

```py
for i in range(1, 17, 3):
    print("The value of i is currently", i)

>>>
The value of i is currently 1
The value of i is currently 4
The value of i is currently 7
The value of i is currently 10
The value of i is currently 13
The value of i is currently 16
>>>
```

```py
#a basic oneliner for loop

#a basic list
l = [1,2,3,4,5,6]

#if we want only the larger nums from the list
largeNums = [nums for nums in l if nums > 3]

#and also we can gain those largeNums by 2
largeNumsPlusTwo = [n + 2 for n in largeNums]

#first select
print('largeNums =', largeNums)

#modified select increased by 2
print('largeNumsPlusTwo =', largeNumsPlusTwo)

>>>
largeNums = [4, 5, 6]
largeNumsPlusTwo = [6, 7, 8]
>>>
```

```py
#a basic oneliner for loop with range

#if we want only the larger nums from the list
largeNums = [nums for nums in range(1,6) if nums > 3]

#and also we can gain those largeNums by 2
largeNumsPlusTwo = [n + 2 for n in largeNums]

#first select
print('largeNums =', largeNums)

#modified select increased by 2
print('largeNumsPlusTwo =', largeNumsPlusTwo)

>>>
largeNums = [4, 5]
largeNumsPlusTwo = [6, 7]
>>>
```

```py
l = [1,2,3]

for n in l:
    print(n)

>>>
1
2
3
>>>
```

```py
l = [1,2,3]
l1 = []

for n in l:
    l1.append(n*2)
print(l1)

>>>
[2, 4, 6]
>>>
```

[^^^](#FOR)

---

#### RANGE

The ```range()``` function may also accept three arguments - take a look at the code in the editor.
The third argument is an increment - it's a value added to control the variable at every loop turn (as you may suspect, the default value of the increment is 1).
Can you tell us how many lines will appear in the console and what values they will contain?
Run the program to find out if you were right.
You should be able to see the following lines in the console window:

```
The value of i is currently 2
The value of i is currently 5
```

```py
for i in range(1, 5):
    print("The value of i is currently", i)

>>>
The value of i is currently 1
The value of i is currently 2
The value of i is currently 3
The value of i is currently 4
>>>    
```

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

The expo variable is used as a control variable for the loop, and indicates the current value of the exponent. The exponentiation itself is replaced by multiplying by two. Since 20 is equal to 1, then ```2 × 1``` is equal to 21, ```2 × 21``` is equal to 22, and so on. What is the greatest exponent for which our program still prints the result?

[^^^](#FOR)

---

#### ODD_AND_EVEN

```

```

```py
l = [1,2,3, 4, 5, 6, 7, 8, 9, 10]

for num in l:
    if num % 2 == 0:
        print(num)
    else:
        print(f'odd number:{num}')

>>>
odd number:1
2
odd number:3
4
odd number:5
6
odd number:7
8
odd number:9
10
>>>        
```

[^^^](#FOR)

---

#### SUM_OF_THE_LIST

```

```

```py
numbers = [6, 5, 3, 8, 4, 2, 5, 4, 11]

sum = 0

for val in numbers:
	sum = sum+val

print("The sum is", sum)

>>>
The sum is 48
>>>
```

```py
l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
ls = 0

for num in l:
    ls = ls + num

print(ls)

>>>
55
>>>
```

[^^^](#FOR)

---

#### MULTIPLY_2_LISTS

```

```

```py
# elements by elements
l1 = [1, 2, 3]
l2 = ['a', 'b', 'c']

for item in zip(l1, l2):
    print(item)

>>>
(1, 'a')
(2, 'b')
(3, 'c')
>>>
```

```py
l1 = [1, 2, 3]
l2 = ['a', 'b', 'c']
l3 = [100, 200, 300]

for item in zip(l1, l2, l3):
    print(item)

>>>
(1, 'a', 100)
(2, 'b', 200)
(3, 'c', 300)
>>>
```

[^^^](#FOR)

---

#### ITERATE_A_STR

```

```

```py
#python for
s = 'trk'

for letters in s:
    print(letters)

>>>
t
r
k
>>>
```

```py
#python for
for letters in 'trk':
    print(letters)

>>>
t
r
k
>>>
```

[^^^](#FOR)

---

#### ITERATE_TUPLES

```

```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]

for n in l:
    print(n)
print(type(n))

>>>
(1, 2)
(3, 4)
(5, 6)
(7, 8)
<class 'tuple'>
>>>
```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]

for (a,b) in l:
    print(a)
    print(b)

>>>
1
2
3
4
5
6
7
8
>>>
```

```py
#python for
l = [(1,2),(3,4),(5,6),(7,8)]
la, lb = [], []

for (a,b) in l:
    la.append(a)
    lb.append(b)
print(la)
print(lb)

>>>
[1, 3, 5, 7]
[2, 4, 6, 8]
>>>
```

[^^^](#FOR)

---

#### ITERATE_DICT

```

```

```py
d = {'k1':1, 'k2':2, 'k3':3}
lk, lv = [], []

for k,v in d.items():
    lk.append(k)
    lv.append(v)
print(lk)
print(lv)

>>>
['k1', 'k2', 'k3']
[1, 2, 3]
>>>
```

[^^^](#FOR)

---

#### FOR_WITH_ELSE

```py
for i in range(5):
    print(i)
else:
    print("else:", i)

>>>
0
1
2
3
4
else: 4
>>>
```

[^^^](#FOR)

---

#### FOR_WITH_RANGE

```

```

```py
for num in range(1,6):
    print (num)

>>>
1
2
3
4
5
>>>
```

```py
l = []
l1 = [l.append(num) for num in range(1,6)]

print(l)

>>>
[1, 2, 3, 4, 5]
>>>
```

```py
for element in range(5):
    print ("hello world")

>>>
hello world
hello world
hello world
hello world
hello world
>>>
```

[^^^](#FOR)

---

#### PASS_FOR

```

```

```py
x = [1, 2, 3]

for nums in x:
    pass

print('how to use pass')

>>>
how to use pass
>>>
```

[^^^](#FOR)

---

#### BREAK_CONTINUE

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
print("The break instruction:")
for i in range(1, 6):
    if i == 3:
        break
    print("Inside the loop.", i)
print("Outside the loop.")

>>>
The break instruction:
Inside the loop. 1
Inside the loop. 2
Outside the loop.
>>>
```

```py
print("\nThe continue instruction:")
for i in range(1, 6):
    if i == 3:
        continue
    print("Inside the loop.", i)
print("Outside the loop.")

>>>
The continue instruction:
Inside the loop. 1
Inside the loop. 2
Inside the loop. 4
Inside the loop. 5
Outside the loop.
>>>
```

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
Enter a number or type -1 to end program: 24
Enter a number or type -1 to end program: 99
Enter a number or type -1 to end program: -1
The largest number is 99
>>>
```

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
Enter a number or type -1 to end program: 28
Enter a number or type -1 to end program: 33
Enter a number or type -1 to end program: 21
Enter a number or type -1 to end program: -1
The largest number is 33
>>>
```

[^^^](#FOR)

---

#### CONTINUE_FOR

```

```

```py
x = 'sammy'

for letter in x:
    if letter == 'm':
        continue
    print(letter)

>>>
say
>>>
```

[^^^](#FOR)

---

#### BREAK_FOR

```

```

```py
x = 'sammy'

for letter in x:
    if letter == 'a':
        break
    print(letter)

>>>
s
>>>
```

[^^^](#FOR)

---

#### ENUMERATE_FOR

```

```

```py
index_count = 0

for letter in 'abc':
    print('at index {} the letter is {}'.format(index_count, letter))
    index_count += 1

>>>
at index 0 the letter is a
at index 1 the letter is b
at index 2 the letter is c
>>>
```

```py
word = 'abc'

for item in enumerate(word):
    print(item)

>>>
(0, 'a')
(1, 'b')
(2, 'c')
>>>
```

```py
word = 'abc'

for index, letter in enumerate(word):
    print(index)
    print(letter)

>>>
0
a
1
b
2
c
>>>
```

[^^^](#FOR)

---
