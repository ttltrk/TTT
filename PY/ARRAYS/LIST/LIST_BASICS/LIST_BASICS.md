
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [ARRAYS](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/ARRAYS.md) - [LIST](https://github.com/ttltrk/TTT/blob/master/PY/ARRAYS/LIST/LIST.md)

---

### LIST_BASICS

---

```
List is a collection which is ordered and changeable. Allows duplicate members.
Lists are used to store multiple items in a single variable.
```

---

* [MARK_THE_ROWS](#MARK_THE_ROWS)
* [ACCESS_ITEMS](#ACCESS_ITEMS)
* [NEGATIVE_INDEXING](#NEGATIVE_INDEXING)
* [RANGE_OF_INDEXES](#RANGE_OF_INDEXES)
* [RANGE_OF_NEGATIVE_INDEXES](#RANGE_OF_NEGATIVE_INDEXES)
* [CHANGE_ITEM_VALUE](#CHANGE_ITEM_VALUE)
* [CHANGE_A_RANGE_OF_ITEM_VALUES](#CHANGE_A_RANGE_OF_ITEM_VALUES)
* [LOOP_THROUGH_LIST](#LOOP_THROUGH_LIST)
* [CHECK_IF_ITEM_EXIST](#CHECK_IF_ITEM_EXIST)
* [LENGTH_OF_LIST](#LENGTH_OF_LIST)
* [ADD_ITEMS](#ADD_ITEMS)
* [REMOVE_EVERY_SECOND_ELEMENT](#REMOVE_EVERY_SECOND_ELEMENT)
* [SUM_OF_TWO_LISTS](#SUM_OF_TWO_LISTS)
* [FIND_MAX_IN_LIST](#FIND_MAX_IN_LIST)
* [SORT_FROM_MIN_MAX](#SORT_FROM_MIN_MAX)
* [NEGATIVE_TO_POSITIVE](#NEGATIVE_TO_POSITIVE)
* [REMOVE_ALL_ELEMENTS_FROM_LIST_WHICH_OCCUR_FROM_ANOTHER](#REMOVE_ALL_ELEMENTS_FROM_LIST_WHICH_OCCUR_FROM_ANOTHER)
* [MULTIPLY_ELEMENTS](#MULTIPLY_ELEMENTS)
* [AVG_OF_LIST](#AVG_OF_LIST)
* [CHANGE_DEDICATED_ELEMENTS_IN_LIST](#CHANGE_DEDICATED_ELEMENTS_IN_LIST)
* [SORT_THE_VALUES](#SORT_THE_VALUES)
* [FIND_UNIQE_NUMS](#FIND_UNIQE_NUMS)
* [DIFFS_BETWEEN_TWO_ARRAYS](#DIFFS_BETWEEN_TWO_ARRAYS)
* [SHORTEST_WORD_IN_LIST](#SHORTEST_WORD_IN_LIST)
* [SUM_OF_ODD_NUMS](#SUM_OF_ODD_NUMS)
* [FIND_THE_LARGER_ODD_INT_OR_NUM](#FIND_THE_LARGER_ODD_INT_OR_NUM)
* [FIND_OCCURENCES_IN_LIST](#FIND_OCCURENCES_IN_LIST)
* [FIND_MAX_VALUE_IN_LIST](#FIND_MAX_VALUE_IN_LIST)
* [FIND_EVEN_OCCURENCES_IN_LIST](#FIND_EVEN_OCCURENCES_IN_LIST)

---

#### MARK_THE_ROWS

```py
L1 = ["a", "b", "c", "d"]
L2 = ["aa", "bb", "cc", "dd"]

for i, L1 in enumerate (L1):
    print(i, L1)

>>>
0 a
1 b
2 c
3 d
>>>
```

[^^^](#LIST_BASICS)

---

#### ACCESS_ITEMS

```
List items are indexed and you can access them by referring to the index number.
```

```py
thislist = ["apple", "banana", "cherry"]

print(thislist)

>>>
['apple', 'banana', 'cherry']
>>>
```

```py
l=[1,2,3,4,5]

print(l)

>>>
[1, 2, 3, 4, 5]
>>>
```

```py
thislist = ["apple", "banana", "cherry"]

print(thislist[1])

>>>
banana
>>>
```

[^^^](#LIST_BASICS)

---

#### NEGATIVE_INDEXING

```
Negative indexing means start from the end
-1 refers to the last item, -2 refers to the second last item etc.
```

```py
thislist = ["apple", "banana", "cherry"]

print(thislist[-1])

>>>
cherry
>>>
```

[^^^](#LIST_BASICS)

---

#### RANGE_OF_INDEXES

```
You can specify a range of indexes by specifying where to start and where to end the range.
When specifying a range, the return value will be a new list with the specified items.
```

```py
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]

print(thislist[2:5])
print(thislist[:4])
print(thislist[2:])

>>>
['cherry', 'orange', 'kiwi']
['apple', 'banana', 'cherry', 'orange']
['cherry', 'orange', 'kiwi', 'melon', 'mango']
>>>
```

[^^^](#LIST_BASICS)

---

#### RANGE_OF_NEGATIVE_INDEXES

```
Specify negative indexes if you want to start the search from the end of the list.
```

```py
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]

print(thislist[-4:-1])

>>>
['orange', 'kiwi', 'melon']
>>>
```

[^^^](#LIST_BASICS)

---

#### CHANGE_ITEM_VALUE

```
To change the value of a specific item, refer to the index number.
```

```py
thislist = ["apple", "banana", "cherry"]
thislist[1] = "blackcurrant"

print(thislist)

>>>
['apple', 'blackcurrant', 'cherry']
>>>
```

[^^^](#LIST_BASICS)

---

#### CHANGE_A_RANGE_OF_ITEM_VALUES

```
To change the value of items within a specific range, define a list with the new values,
and refer to the range of index numbers where you want to insert the new values.
```

```py
thislist = ["apple", "banana", "cherry", "orange", "kiwi", "mango"]
print(thislist)
thislist[1:3] = ["blackcurrant", "watermelon"]
print(thislist)

>>>
['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango']
['apple', 'blackcurrant', 'watermelon', 'orange', 'kiwi', 'mango']
>>>
```

```
If you insert more items than you replace, the new items will be inserted where you specified, and the remaining items will move accordingly.
```

```py
thislist = ["apple", "banana", "cherry"]
print(thislist)
thislist[1:2] = ["blackcurrant", "watermelon"]
print(thislist)

>>>
['apple', 'banana', 'cherry']
['apple', 'blackcurrant', 'watermelon', 'cherry']
>>>
```

```
If you insert less items than you replace, the new items will be inserted where you specified, and the remaining items will move accordingly.
```

```py
thislist = ["apple", "banana", "cherry"]
print(thislist)
thislist[1:3] = ["watermelon"]
print(thislist)

>>>
['apple', 'banana', 'cherry']
['apple', 'watermelon']
>>>
```

[^^^](#LIST_BASICS)

---

#### LOOP_THROUGH_LIST

```py
thislist = ["apple", "banana", "cherry"]

for x in thislist:
  print(x)

>>>
apple
banana
cherry
>>>
```

[^^^](#LIST_BASICS)

---

#### CHECK_IF_ITEM_EXIST

```py
thislist = ["apple", "banana", "cherry"]

if "apple" in thislist:
  print("Yes, 'apple' is in the fruits list")

>>>
Yes, 'apple' is in the fruits list
>>>
```

[^^^](#LIST_BASICS)

---

#### LENGTH_OF_LIST

```py
thislist = ["apple", "banana", "cherry"]

print(len(thislist))

>>>
3
>>>
```

[^^^](#LIST_BASICS)

---

#### ADD_ITEMS

```py
thislist = ["apple", "banana", "cherry"]
thislist.append("orange")

print(thislist)

>>>
['apple', 'banana', 'cherry', 'orange']
>>>
```

```py
thislist = ["apple", "banana", "cherry"]
thislist.insert(1, "orange")

print(thislist)

>>>
['apple', 'orange', 'banana', 'cherry']
>>>
```

[^^^](#LIST_BASICS)

---

#### REMOVE_EVERY_SECOND_ELEMENT

```py
del mylist[1::2]
```

[^^^](#LIST_BASICS)

---

#### SUM_OF_TWO_LISTS

```py
sumOfTheList = firstList + secList
```

[^^^](#LIST_BASICS)

---

#### FIND_MAX_IN_LIST

```py
highest = max(arr)
```

[^^^](#LIST_BASICS)

---

#### SORT_FROM_MIN_MAX

```py
l.sort()
```

[^^^](#LIST_BASICS)

---

#### NEGATIVE_TO_POSITIVE

```py
def invert(lst):
    lst[:] = [-1 * x for x in lst]
    return lst

print(invert([1,-2,3,-4,5]))

>>>
[-1, 2, -3, 4, -5]
>>>
```

[^^^](#LIST_BASICS)

---

#### REMOVE_ALL_ELEMENTS_FROM_LIST_WHICH_OCCUR_FROM_ANOTHER

```py
geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

def goose_filter(birds):
    res = [x for x in birds if x not in geese]
    return res


print(goose_filter(["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]))

>>>
['Mallard', 'Hook Bill', 'Crested', 'Blue Swedish']
>>>
```

[^^^](#LIST_BASICS)

---

#### MULTIPLY_ELEMENTS

```py
def grow(arr):

    result = 1
    for x in arr:
         result = result * x
    return result

print(grow([1,2,3]))

>>>
6
>>>
```

[^^^](#LIST_BASICS)

---

#### AVG_OF_LIST

```py
l = [1, 5, 87, 45, 8, 8]

a = int(sum(l)/len(l))
print(a)

>>>
25
>>>
```

[^^^](#LIST_BASICS)

---

#### CHANGE_DEDICATED_ELEMENTS_IN_LIST

```py
def DNAtoRNA(dna):

    #string to list
    l = list(dna)

    #change all the Ts to U
    for n, i in enumerate(l):
        if i == 'T':
            l[n] = 'U'

    #change list to string
    str1 = ''.join(l)

    return str1


print(DNAtoRNA("TTTT"))

>>>
UUUU
>>>
```

[^^^](#LIST_BASICS)

---

#### SORT_THE_VALUES

```py
def men_from_boys(arr):
    le, lo, ls = [], [], []

    for nums in arr:
        if nums % 2 == 0:
            le.append(nums)
        else:
            lo.append(nums)

    le.sort(reverse=False)
    lo.sort(reverse=True)
    le = list(dict.fromkeys(le))
    lo = list(dict.fromkeys(lo))
    ls.extend(le)
    ls.extend(lo)
    return ls

print(men_from_boys([1,2,3,4,5,3,4,5,6,1,2,3]))

>>>
[2, 4, 6, 5, 3, 1]
>>>
```

[^^^](#LIST_BASICS)

---

#### FIND_UNIQE_NUMS

```py
def find_uniq(arr):
    if (arr[0] == arr[1]) or (arr[0] != arr[1] and arr[0] == arr[2]):
        repeatableNum = arr[0]
    else:
        repeatableNum = arr[1]
    for nums in arr:
        if nums != repeatableNum:
            return nums

print(find_uniq(arr = [ 3, 10, 3, 3, 3 ]))

>>>
10
>>>
```

[^^^](#LIST_BASICS)

---

#### DIFFS_BETWEEN_TWO_ARRAYS

```py
def firstElem(tem):

    main = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
    'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
            'v', 'w', 'x', 'y', 'z']

    #change the temp list to lowercase
    temp = [x.lower() for x in tem]

    #find the first element
    for x in temp:
        for y in main:
            if x == y:

                firstElem = main.index(y)
                tempnum = len(temp)
                lastElem = tempnum+firstElem
                convmain = main[firstElem:lastElem + 1]
                diff = list(set(convmain) - set(temp))

                #list to string
                finalConv = ''.join(diff)

                #change the output from lower to upper if it is needed
                if tem[0].isupper():
                    return finalConv.upper()
                else:
                    return finalConv

print(firstElem(['O','Q','R','S']))

>>>
P
>>>
```

[^^^](#LIST_BASICS)

---

#### SHORTEST_WORD_IN_LIST

```py
def find_short(s):

    z = s.split()
    minimunWordLength = min([len(word) for word in z])
    return minimunWordLength

print(find_short("bitcoin take over the world maybe who knows perhaps"))

>>>
3
>>>
```

[^^^](#LIST_BASICS)

---

#### SUM_OF_ODD_NUMS

```py
def row_sum_odd_numbers(n):

    #define the size of the list to 10000
    l = list(range(10000))

    #return only the odd elements
    ll = [nums for nums in l if nums %2 == 1]

    #find the first element
    firstElement = ((n*(n-1))+1)

    #check the index of the first element
    firstIndex = ll.index(firstElement)

    finalList = []

    #create the final list
    finalListBeta = ll[firstIndex:]
    finalList = finalListBeta[:n]

    print(finalList)

    #return sum of the finalList
    return sum(finalList)

print(row_sum_odd_numbers(1))
print(row_sum_odd_numbers(2))
print(row_sum_odd_numbers(3))
print(row_sum_odd_numbers(4))
print(row_sum_odd_numbers(5))

>>>
[1]
1

[3, 5]
8

[7, 9, 11]
27

[13, 15, 17, 19]
64

[21, 23, 25, 27, 29]
125
>>>
```

[^^^](#LIST_BASICS)

---

#### FIND_THE_LARGER_ODD_INT_OR_NUM

```py
def find_it(seq):

    #find the odd integers
    res = [nums for nums in seq if nums % 2 == 1]
    #print(res)

    #find the occurencies
    listOutOrigin = []
    for element in res:
        a = res.count(element)
        listOutOrigin.append(a)
    #print(listOutOrigin)

    #join odd integers with odd occurencies into the dict
    dictionary = dict(zip(res, listOutOrigin))
    #print(dictionary)

    #max value and max key from dict
    max_value = max(dictionary.values())  # maximum value
    max_keys = [k for k, v in dictionary.items() if v == max_value]  # getting all keys containing the `maximum`
    #print(max_value, max_keys)

    return max_keys[0]

print(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5, -1, -1, -1, -1, -1, -1, -1]))

>>>
-1
>>>
```

[^^^](#LIST_BASICS)

---

#### FIND_OCCURENCES_IN_LIST

```py
def find_it(seq):

    #find the occurencies
    listOutOrigin = []
    for element in seq:
        a = seq.count(element)
        listOutOrigin.append(a)
    return listOutOrigin

print(find_it([12, 10, 8, 12, 7, 6, 4, 10, 12, 16, 16, 16]))

>>>
[3, 2, 1, 3, 1, 1, 1, 2, 3, 3, 3, 3]
>>>
```

oneliner, same as above

```py
l1=list(s)    
l2 = []
l3 = [l2.append(l1.count(el)) for el in l1]   
```

[^^^](#LIST_BASICS)

---

#### FIND_MAX_VALUE_IN_LIST

```py
def find_it(seq):

    return max(seq)

print(find_it([12, 10, 8, 12, 7, 6, 4, 10, 12, 16, 16, 16]))

>>>
16
>>>
```

[^^^](#LIST_BASICS)

---

#### FIND_EVEN_OCCURENCES_IN_LIST

```py
def odd_ones_out(numbers):

    #print(numbers)

    #occurencies
    listOutOrigin = []
    for element in numbers:
        a = numbers.count(element)
        listOutOrigin.append(a)
    #print(listOutOrigin)

    #find the even occurencies in the list
    findTrue = [occurencies % 2 == 0 for occurencies in listOutOrigin]
    #print(findTrue)

    #find more than one index in the list
    findIndexesInTheList1 = [i for i, e in enumerate(findTrue) if e == True]
    #print(findIndexesInTheList1)

    #make a list for the results
    finalRes = [numbers[indexes] for indexes in findIndexesInTheList1]
    return finalRes

print(odd_ones_out([75, 68, 75, 47, 68]))

>>>
[75, 68, 75, 68]
>>>
```

[^^^](#LIST_BASICS)

---
