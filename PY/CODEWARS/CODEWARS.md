
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### CODEWARS

---

* [maskify](#maskify)
* [who_took_the_car_key](#who_took_the_car_key)
* [max_multiple](#max_multiple)
* [double_char](#double_char)
* [encode](#encode)
* [am_I_afraid](#am_I_afraid)
* [nato](#nato)
* [tail_swap](#tail_swap)
* [two_are_positive](#two_are_positive)
* [max_diff](#max_diff)
* [print_array](#print_array)
* [get_military_time](#get_military_time)
* [drop_cap](#drop_cap)
* [is_divisible](#is_divisible)
* [filter_string](#filter_string)
* [vowel_2_index](#vowel_2_index)
* [process_data](#process_data)
* [is_opposite](#is_opposite)
* [area_code](#area_code)
* [what_time_is_it](#what_time_is_it)
* [solution](#solution)
* [triangular](#triangular)
* [to_jaden_case](#to_jaden_case)
* [explode](#explode)
* [lowercase_count](#lowercase_count)
* [get_min_max](#get_min_max)
* [battle](#battle)
* [multi_table](#multi_table)
* [capitals](#capitals)
* [fix_syntax](#fix_syntax)
* [who_is_paying](#who_is_paying)
* [to24hourtime](#to24hourtime)
* [chromosome_check](#chromosome_check)
* [string_to_array](#string_to_array)
* [pipe_fix](#pipe_fix)
* [odd_or_even](#odd_or_even)
* [sum_digits](#sum_digits)
* [position](#position)
* [get_middle](#get_middle)
* [friend](#friend)
* [remove](#remove)
* [alphabet_war](#alphabet_war)
* [xor](#xor)
* [find_array](#find_array)
* [two_oldest_ages](#two_oldest_ages)
* [tap_code_translation](#tap_code_translation)
* [accum](#accum)
* [switcheroo](#switcheroo)
* [alternate_case](#alternate_case)
* [to_acronym](#to_acronym)
* [last](#last)
* [mouth_size](#mouth_size)
* [is_divisble](#is_divisble)
* [factorial](#factorial)
* [count_squares](#count_squares)
* [sum_the_strings](#sum_the_strings)
* [shorten_to_date](#shorten_to_date)
* [split_and_merge](#split_and_merge)
* [greet](#greet)
* [reverse_sequence](#reverse_sequence)
* [multiplication_table](#multiplication_table)
* [is_pangram](#is_pangram)
* [alternate](#alternate)
* [compare](#compare)
* [sequence_sum](#sequence_sum)
* [digitize](#digitize)
* [product_of_largest_num](#product_of_largest_num)
* [index_of_an_element](#index_of_an_element)
* [name_shuffler](#name_shuffler)
* [did_she_say_hello](#did_she_say_hello)
* [reverse_letter](#reverse_letter)
* [get_sum](#get_sum)
* [stray](#stray)
* [find_multiples](#find_multiples)
* [digital_root](#digital_root)
* [high_and_low](#high_and_low)
* [diamond](#diamond)
* [isLeapYear](#isLeapYear)
* [create_phone_number](#create_phone_number)
* [find_it](#find_it)
* [args_count](#args_count)
* [alphanumeric](#alphanumeric)
* [unscramble_eggs](#unscramble_eggs)
* [solution](#solution)
* [most_frequent_item_count](#most_frequent_item_count)
* [pythagorean_triple](#pythagorean_triple)
* [generate_hashtag](#generate_hashtag)
* [luck_check](#luck_check)
* [number_joy](#number_joy)
* [is_sorted_and_how](#is_sorted_and_how)
* [open_or_senior](#open_or_senior)
* [get_positions](#get_positions)
* [incrementer](#incrementer)
* [largest_elements](#largest_elements)
* [fizzbuzz](#fizzbuzz)
* [html_special_chars](#html_special_chars)
* [volumes_of_cuboids](#volumes_of_cuboids)
* [vowel_one](#vowel_one)
* [is_square](#is_square)
* [changing_letters](#changing_letters)
* [expanded_form](#expanded_form)
* [is_square](#is_square2)
* [kooka_counter](#kooka_counter)
* [get_count](#get_count)
* [shorter_reverse_longer](#shorter_reverse_longer)
* [get_sum_of_digits](#get_sum_of_digits)
* [solve](#solve)
* [disemvowel](#disemvowel)
* [squares](#squares)
* [is_it_a_num](#is_it_a_num)
* [sort_dict](#sort_dict)
* [square_num](#square_num)
* [covfefe](#covfefe)
* [between_extremes](#between_extremes)
* [cube_checker](#cube_checker)
* [trim](#trim)
* [sort_by_length](#sort_by_length)
* [no_odds](#no_odds)
* [keep_order](#keep_order)
* [contamination](#contamination)
* [tower_builder](#tower_builder)
* [second_symbol](#second_symbol)
* [powers_of_two](#powers_of_two)
* [Replace_all_dots](#Replace_all_dots)
* [String_Templates_BugFixing5](#String_Templates_BugFixing5)
* [Vowel_remover](#Vowel_remover)

---

#### maskify

```py
#DONE - https://www.codewars.com/kata/5412509bd436bd33920011bc/train/python

# return masked string
def maskify(cc):
    l = [chars for chars in cc]
    lx = [chars.replace(chars,'#') for chars in cc]

    if len(cc) < 4:
        return cc
    else:
        lx = lx[:-4]
        l = l[-4:]
        str1 = ''.join(l)
        lx.append(str1)
        str2 = ''.join(lx)
        return str2    

maskify('12356789')

>>>
'####6789'
>>>
```

[^^^](#CODEWARS)

---

#### who_took_the_car_key

```py
#DONE - https://www.codewars.com/kata/57a23c2acf1fa514d0001034/train/python
#src - https://techwelkin.com/tools/text-binary-online-converter/

#BS
#return ''.join(chr(int(i,2)) for i in message)
#

def who_took_the_car_key(message):
    data = {'01000001':'A', '01000010':'B', '01000011':'C', '01000100':'D',
            '01000101':'E', '01000110':'F', '01000111':'G', '01001000':'H',
            '01001001':'I', '01001010':'J', '01001011':'K', '01001100':'L',
            '01001101':'M', '01001110':'N', '01001111':'O', '01010000':'P',
            '01010001':'Q', '01010010':'R', '01010011':'S', '01010100':'T',
            '01010101':'U', '01010110':'V', '01010111':'W', '01011000':'X',
            '01011001':'Y', '01011010':'Z', '01100001':'a', '01100010':'b',
            '01100011':'c', '01100100':'d', '01100101':'e', '01100110':'f',
            '01100111':'g', '01101000':'h', '01101001':'i', '01101010':'j',
            '01101011':'k', '01101100':'l', '01101101':'m', '01101110':'n',
            '01101111':'o', '01110000':'p', '01110001':'q', '01110010':'r',
            '01110011':'s', '01110100':'t', '01110101':'u', '01110110':'v',
            '01110111':'w', '01111000':'x', '01111001':'y', '01111010':'z'}

    #iterate trough list and dictionary
    lx = []
    for ch in message:
        for chars in data.keys():
            if ch == chars:
                lx.append(data[ch])
    str1 = ''.join(lx)
    return str1

who_took_the_car_key(['01000011', '01101000', '01110010', '01101001', '01110011'])

>>>
Chris
>>>
```

[^^^](#CODEWARS)

---

#### max_multiple

```py
def max_multiple(divisor, bound):
    l = [nums for nums in range(divisor,bound+1,divisor)]
    return max(l)

max_multiple(10,50)

>>>
50
>>>
```

[^^^](#CODEWARS)

---

#### double_char    

```py
def double_char(s):
    #l = [chars+chars for chars in s]
    #str1 = ''.join(l)
    #return str1

    return ''.join([chars+chars for chars in s])

double_char('hello')

>>>
hheelllloo
>>>
```

[^^^](#CODEWARS)

---

#### break_chocolate

```py
def break_chocolate(n, m):
    res = (n*m)-1
    if res < 0:
        return 0
    else:
        return res

break_chocolate(5,5)

>>>
24
>>>
```

[^^^](#CODEWARS)

---

#### am_I_afraid

```py
#DONE - https://www.codewars.com/kata/55b1fd84a24ad00b32000075/train/python

def am_I_afraid(day,num):
    res = True
    if day == 'Monday' and num == 12:
        return res
    elif day == 'Tuesday' and num > 95:
        return res
    elif day == 'Wednesday' and num == 34:
        return res
    elif day == 'Thursday' and num == 0:
        return res
    elif day == 'Friday' and num%2 == 0:
        return res
    elif day == 'Saturday' and num == 56 :
        return res
    elif day == 'Sunday' and (num == 666 or num == -666):
        return res
    else:
        return False

am_I_afraid('Monday',   13)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### nato

```py
#DONE - https://www.codewars.com/kata/54530f75699b53e558002076/train/python

def nato(word):
    nato = {'a':'Alpha', 'b':'Bravo', 'c':'Charlie', 'd':'Delta', 'e':'Echo',
            'f':'Foxtrot', 'g':'Golf', 'h':'Hotel', 'i':'India', 'j':'Juliett',
            'k':'Kilo', 'l':'Lima', 'm':'Mike', 'n':'November', 'o':'Oscar', 'p':'Papa',
            'q':'Quebec', 'r':'Romeo', 's':'Sierra', 't':'Tango', 'u':'Uniform',
            'v':'Victor', 'w':'Whiskey', 'x':'X-ray', 'y':'Yankee', 'z':'Zulu'}

    l = [chars.lower() for chars in word]

    #iterate trough list and dictionary
    l1 = []
    for ch in l:
        for chars in nato.keys():
            if ch == chars:
                l1.append(nato[ch])

    str1 = ' '.join(l1)
    return str1


nato('hi')

>>>
'Hotel India'
>>>
```

[^^^](#CODEWARS)

---

#### tail_swap

```py
def tail_swap(strings):   
    k1 = strings[0].index(':')
    k2 = strings[1].index(':')    
    b1 = strings[0][:k1+1]
    b2 = strings[1][:k2+1]
    e1 = strings[0][k1+1:]
    e2 = strings[1][k2+1:]    
    f1 = b1+e2
    f2 = b2+e1    
    l = []
    l.append(f1)
    l.append(f2)    
    return l

tail_swap(['abc:123', 'cde:456'])

>>>
['abc:456', 'cde:123']
>>>
```

[^^^](#CODEWARS)

---

#### two_are_positive

```py
#DONE - https://www.codewars.com/kata/602db3215c22df000e8544f0/train/python

def two_are_positive(a, b, c):
    l,ll, lx = [],[],[]
    l.append(a)
    l.append(b)
    l.append(c)

    for nums in l:
        if nums <= 0:
            ll.append('x')
        elif nums > 0:
            lx.append('x')

    if len(ll) > 1 or len(lx) == 3:
        return False
    else:
        return True

two_are_positive(97, 63, 0)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### max_diff

```py
#INP - https://www.codewars.com/kata/588a3c3ef0fbc9c8e1000095/train/python

def max_diff(lst):
    if len(lst) <= 1:
        return 0
    else:
        return max(lst)-min(lst)

max_diff([0, 1, 2, 3, 4, 5, 6])

>>>
6
>>>
```

[^^^](#CODEWARS)

---

#### print_array

```py
def print_array(arr):
    l = [str(nums) for nums in arr]
    str1 = ','.join(l)
    return str1

>>>
'2,4,5,2'
>>>
```

[^^^](#CODEWARS)

---

#### get_military_time

```py
#DONE - https://www.codewars.com/kata/57729a09914da60e17000329/train/python

def get_military_time(time):
    l = [chars for chars in time]
    k = l[:2]
    str1 = ''.join(k)
    i_str1 = int(str1)

    if i_str1 == 12 and 'A' in l:
        return '00'+time[2:-2]
    elif i_str1 == 12 and 'P' in l:
        return time[:-2]
    elif 'P' in l:
        a = 12+i_str1
        return str(a)+time[2:-2]
    else:
        return time[:-2]

get_military_time('12:46:47PM')

>>>
'12:46:47'
>>>
```

[^^^](#CODEWARS)

---

#### drop_cap

```
DropCaps means that the first letter of the starting word of the paragraph should be in caps and the remaining lowercase, just like you see in the newspaper.

But for a change, let"s do that for each and every word of the given String. Your task is to capitalize every word that has length greater than 2, leaving smaller words as they are.

*should work also on Leading and Trailing Spaces and caps.
```

```py
#DONE - https://www.codewars.com/kata/559e5b717dd758a3eb00005a/train/python

def drop_cap(words):

    #the below mentioned split will append all the whitespaces into the list
    inpL = words.split(' ')

    l = []
    for chars in inpL:
        if len(chars) > 2:
            l.append(chars.capitalize())
        else:
            l.append(chars)
    str1 = ' '.join(l)
    return str1

drop_cap('one  a  space')

>>>
'One  a  Space'
>>>
```

[^^^](#CODEWARS)

---

#### is_divisible

```
the first num is divisble wit the rest
```

```py
#INP - https://www.codewars.com/kata/558ee8415872565824000007/train/python

def is_divisible(*args):

    l = [nums for nums in args]
    res = []

    for nums in l[1:]:
        if args[0]%nums != 0:
            res.append('x')

    if len(res) != 0:
        return False
    else:
        return True


is_divisible(3,3,4)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### filter_string

```

```

```py
#DONE - https://www.codewars.com/kata/55b051fac50a3292a9000025/train/python

def filter_string(string):    
    return int(''.join([n for n in string if n in '1234567890']))


filter_string('a1b2c3')

>>>
123
>>>
```

[^^^](#CODEWARS)

---

#### vowel_2_index

```py
#DONE - https://www.codewars.com/kata/55d410c492e6ed767000004f/train/python

def vowel_2_index(string):
    vow = 'aeiouAEIOU'
    fin = []

    l = [chars for chars in string]

    for vals,ele in enumerate(l):
        if ele in vow:
            fin.append(str(vals+1))
        else:
            fin.append(ele)

    str1 = ''.join(fin)
    return str1
vowel_2_index('this is my string')

>>>
'th3s 6s my str15ng'
>>>
```

[^^^](#CODEWARS)

---

#### process_data

```
Multiply all numbers in the list
```

```py
#DONE - https://www.codewars.com/kata/586e1d458cb711f0a800033b/train/python

def process_data(data):
    l = [nums[0]-nums[-1] for nums in data]
    #Multiply all numbers in the list
    result = 1
    for x in l:
        result = result * x
    return result

process_data([[2, 9], [2, 4], [7, 5]])

>>>
28
>>>
```

[^^^](#CODEWARS)

---

#### is_opposite

```py
#DONE - https://www.codewars.com/kata/574b1916a3ebd6e4fa0012e7/train/python

def is_opposite(s1,s2):

    l1 = [chars for chars in s1]
    l2 = [chars for chars in s2]

    if len(l1) == 0 or len(l2) == 0:
        return False
    else:
        for chs1 in s1:
            for chs2 in s2:
                if chs1 == chs2:
                    return False
                else:
                    return True

is_opposite('aB','Ab')

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### area_code

```
how to find a part of the string
```

```py
#DONE - https://www.codewars.com/kata/585a36b445376cbc22000072/train/python

def area_code(text):
    l = [chars for chars in text]
    k1 = l.index('(')
    k2 = l.index(')')
    str1 = ''.join(l[k1+1:k2])
    return str1

area_code("The supplier's phone number is (555) 867-5309")

>>>
'555'
>>>
```

```py
def area_code(text):
    l = [chars for chars in text]
    return ''.join(l[l.index('(')+1:l.index(')')])

area_code("The supplier's phone number is (555) 867-5309")

>>>
'555'
>>>
```

[^^^](#CODEWARS)

---

#### what_time_is_it

```py
#DONE - https://www.codewars.com/kata/59752e1f064d1261cb0000ec/train/python

def what_time_is_it(angle):

    #every hour is 30 degr.
    #every min is 2 degr.

    kh = 30
    km = 2

    hour = int(angle//kh)
    minutes = int((angle%kh)*km)

    if angle == 0 or angle == 360:
        return '12:00'
    elif str(hour)[0] == '0' and len(str(minutes)) == 2:
        return f'12:{minutes}'
    elif str(hour)[0] == '0' and len(str(minutes)) == 1:
        return f'12:0{minutes}'
    elif len(str(hour)) == 2 and len(str(minutes)) == 2:
        return f'{hour}:{minutes}'
    elif len(str(hour)) == 2 and len(str(minutes)) == 1:
        return f'{hour}:0{minutes}'
    elif len(str(hour)) == 1 and len(str(minutes)) == 2:
        return f'0{hour}:{minutes}'
    else:
        return f'0{hour}:0{minutes}'

what_time_is_it(27.1710)

>>>
'12:54'
>>>
```

[^^^](#CODEWARS)

---

#### solution

```py
#DONE - https://www.codewars.com/kata/5143d157ceb46d6a61000001/train/python

def solution(n):

    return float('%.2f' % n)

solution(5.678)

>>>
5.68
>>>
```

[^^^](#CODEWARS)

---

#### triangular

```
1st (1)   2nd (3)    3rd (6)
*          **        ***
           *         **
                     *
```

```py
#INP - https://www.codewars.com/kata/525e5a1cb735154b320002c8/train/python

def triangular(n):
    l = [nums for nums in range(1,n+1)]
    l.reverse()
    return sum(l)

triangular(10)

>>>
55
>>>
```

[^^^](#CODEWARS)

---

#### to_jaden_case

```
convert the first character into uppercase
```

```py
#DONE - https://www.codewars.com/kata/5390bac347d09b7da40006f6/train/python

def to_jaden_case(string):
    inpL = string.split()
    l = [chars.capitalize() for chars in inpL]
    str1 = ' '.join(l)
    return str1

to_jaden_case("How can mirrors be real if our eyes aren't real")

>>>
"How Can Mirrors Be Real If Our Eyes Aren't Real"
>>>
```

[^^^](#CODEWARS)

---

#### explode

```
multiply the all the numbers with their own value
```

```py
#DONE - https://www.codewars.com/kata/585b1fafe08bae9988000314/train/python

def explode(s):
    l = [int(nums)*nums for nums in s]
    str1 = ''.join(l)
    return str1

explode('312')

>>>
'333122'
>>>
```

[^^^](#CODEWARS)

---

#### lowercase_count

```
count the lowercase characters in the string
```

```py
#DONE - https://www.codewars.com/kata/56a946cd7bd95ccab2000055/train/python

def lowercase_count(strng):
    return len([chars for chars in strng if chars.islower()])

lowercase_count("abcDEf")

>>>
4
>>>
```

[^^^](#CODEWARS)

---

#### get_min_max

```
get the minimum and maximum value from the list
```

```py
#DONE - https://www.codewars.com/kata/57a1ae8c7cb1f31e4e000130/train/python

def get_min_max(seq):
    return min(seq), max(seq)

get_min_max([2,1])

>>>
(1, 2)
>>>
```

[^^^](#CODEWARS)

---

#### battle

```py
#DONE - https://www.codewars.com/kata/595519279be6c575b5000016/train/python

def battle(x, y):
    ABC = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    l1, l2 = [], []

    for chars in x:
        for count, ele in enumerate(ABC,1):
            if chars == ele:
                l1.append(count)

    for chars in y:
        for count, ele in enumerate(ABC,1):
            if chars == ele:
                l2.append(count)
    if sum(l1) > sum(l2):
        return x
    elif sum(l1) < sum(l2):
        return y
    else:
        return "Tie!"

battle('ABC','EFG')

>>>
'EFG'
>>>
```

[^^^](#CODEWARS)

---

#### multi_table

```py
#DONE - https://www.codewars.com/kata/5a2fd38b55519ed98f0000ce/train/python

def multi_table(number):
    r1 = 1 * number
    r2 = 2 * number
    r3 = 3 * number
    r4 = 4 * number
    r5 = 5 * number
    r6 = 6 * number
    r7 = 7 * number
    r8 = 8 * number
    r9 = 9 * number
    r10 = 10 * number
    print(f'1 * {number} = {r1}\n2 * {number} = {r2}\n3 * {number} = {r3}\n4 * {number} = {r4}\n5 * {number} = {r5}\n6 * {number} = {r6}\n7 * {number} = {r7}\n8 * {number} = {r8}\n9 * {number} = {r9}\n10 * {number} = {r10}')

multi_table(10)

>>>
1 * 10 = 10
2 * 10 = 20
3 * 10 = 30
4 * 10 = 40
5 * 10 = 50
6 * 10 = 60
7 * 10 = 70
8 * 10 = 80
9 * 10 = 90
10 * 10 = 100
>>>
```

[^^^](#CODEWARS)

---

#### capitals

```py
#DONE - https://www.codewars.com/kata/539ee3b6757843632d00026b/train/python

def capitals(word):
    l = []
    k = [chars for chars in word]

    for count, ele in enumerate(k):
        if ele.isupper():
            l.append(count)
    return l
capitals('CodEWaRsC')

>>>
[0, 3, 4, 6, 8]
>>>
```

[^^^](#CODEWARS)

---

#### fix_syntax

```py
#DONE - https://www.codewars.com/kata/56dae9dc54c0acd29d00109a/train/python

def main(verb, noun):
    return verb + noun

main('hello ', 'world')

>>>
'hello world'
>>>
```

[^^^](#CODEWARS)

---

#### who_is_paying

```py
#DONE - https://www.codewars.com/kata/58bf9bd943fadb2a980000a7/train/python

def who_is_paying(name):
    l = []
    l.append(name)

    if len(name) >= 2:
        l.append(name[:2])
        return l
    else:
        return l

who_is_paying("Mexico")

>>>
['Mexico', 'Me']
>>>
```

[^^^](#CODEWARS)

---

#### to24hourtime

```py
#DONE - https://www.codewars.com/kata/59b0a6da44a4b7080300008a/train/python

def to24hourtime(hour, minute, period):
    if period[0] == 'a':
        if hour == 12 and minute == 0:
            return f'000{minute}'
        elif hour == 12 and len(str(minute)) < 2:
            return f'000{minute}'
        elif hour == 12 and len(str(minute)) == 2:
            return f'00{minute}'
        elif hour == 12 and minute != 0:
            return f'00{minute}'
        elif len(str(hour)) < 2 and len(str(minute)) < 2:
            return f'0{hour}0{minute}'
        elif len(str(hour)) < 2 and len(str(minute)) == 2:
            return f'0{hour}{minute}'
        elif len(str(hour)) > 1 and len(str(minute)) < 2:
            return f'{hour}0{minute}'
        else:
            return f'{hour}{minute}'
    else:
        if hour == 12 and len(str(minute)) < 2:
            return f'{hour}0{minute}'
        elif hour == 12 and len(str(minute)) == 2:
            return f'{hour}{minute}'
        elif hour == 12 and minute != 0:
            return f'00{minute}'
        elif len(str(hour)) < 2 and len(str(minute)) < 2:
            return f'{12+hour}0{minute}'
        elif len(str(hour)) < 2 and len(str(minute)) == 2:
            return f'{12+hour}{minute}'
        elif len(str(hour)) > 1 and len(str(minute)) < 2:
            return f'{12+hour}0{minute}'
        else:
            return f'{12+hour}{minute}'

to24hourtime( 12,  8, 'pm')

>>>
'1208'
>>>
```

[^^^](#CODEWARS)

---

#### chromosome_check

```py
#DONE - https://www.codewars.com/kata/56530b444e831334c0000020/train/python

def chromosome_check(sperm):
    if sperm == 'XY':
        return "Congratulations! You\'re going to have a son."
    else:
        return "Congratulations! You\'re going to have a daughter."

chromosome_check("XY")

>>>
"Congratulations! You're going to have a son."
>>>
```

[^^^](#CODEWARS)

---

#### string_to_array

```py
#DONE - https://www.codewars.com/kata/57e76bc428d6fbc2d500036d/train/python

def string_to_array(s):
    l = ['']
    if len(s) == 0:
        return l
    else:
        z = s.split()
        return z

string_to_array("Robin Singh")

>>>
['Robin', 'Singh']
>>>
```

[^^^](#CODEWARS)

---

#### pipe_fix

```py
#INP - https://www.codewars.com/kata/56b29582461215098d00000f/train/python

def pipe_fix(nums):
    return [num for num in range(nums[0],nums[-1]+1)]

pipe_fix([-1, 4])

>>>
[-1, 0, 1, 2, 3, 4]
>>>
```

[^^^](#CODEWARS)

---

#### odd_or_even

```py
#DONE - https://www.codewars.com/kata/5949481f86420f59480000e7/train/python

def odd_or_even(arr):
    if sum(arr)%2 == 0:
        return 'even'
    else:
        return 'odd'

odd_or_even([1,-2,3])

>>>
even
>>>
```

[^^^](#CODEWARS)

---

#### sum_digits

```py
def sum_digits(number):
    x = str(number)
    if number < 0:
        res = x[1::]
        l = [int(nums) for nums in res]
        return sum(l)
    else:
        l = [int(nums) for nums in str(number)]
        return sum(l)

sum_digits(-10)

>>>
1
>>>
```

[^^^](#CODEWARS)

---

#### position

```py
#DONE - https://www.codewars.com/kata/5808e2006b65bff35500008f/train/python

def position(alphabet):

    abc = 'abcdefghijklmnopqrstuvwxyz'

    l = [chars for chars in abc]
    res = l.index(alphabet)+1
    return 'Position of alphabet: '+ str(res)

position('a')

>>>
'Position of alphabet: 1'
>>>
```

[^^^](#CODEWARS)

---

#### get_middle

```py
#DONE - https://www.codewars.com/kata/56747fd5cb988479af000028/train/python

def get_middle(s):
    x = len(s)%2
    y = int(len(s)/2)


    if x == 0:
        return s[y-1]+s[y]
    else:
        return s[y]


get_middle('testing')

>>>
't'
>>>
```

[^^^](#CODEWARS)

---

#### friend

```py
#DONE - https://www.codewars.com/kata/55b42574ff091733d900002f/train/python

def friend(x):
    res = [chars for chars in x if len(chars) == 4]
    return res

friend(["Ryan", "Kieran", "Mark"])

>>>
['Ryan', 'Mark']
>>>
```

[^^^](#CODEWARS)

---

#### remove

```py
#DONE - https://www.codewars.com/kata/57fafb6d2b5314c839000195/train/python

def remove(s):
    inpL = s.split()
    l = [chars for chars in inpL]

    ll = []
    for chars in l:
        if '!' not in chars:
            ll.append(chars)
        elif chars.count('!') > 1:
            ll.append(chars)

    str1 = ' '.join(ll)
    return str1

remove("Hi Hi! Hi!! Hi")

>>>
'Hi Hi!! Hi'
>>>
```

[^^^](#CODEWARS)

---

#### alphabet_war

```py
#DONE - https://www.codewars.com/kata/59377c53e66267c8f6000027/train/python

def alphabet_war(fight):
    d1 = {'w': 4, 'p': 3, 'b': 2, 's': 1}
    d2 = {'m': 4, 'q': 3, 'd': 2, 'z': 1}

    l1, l2 = [],[]
    for ch in fight:
        for chars in d1.keys():
            if ch == chars:
                l1.append(d1[ch])
    left = sum(l1)

    for ch in fight:
        for chars in d2.keys():
            if ch == chars:
                l2.append(d2[ch])
    right = sum(l2)

    if left > right:
        return "Left side wins!"
    elif right > left:
        return "Right side wins!"
    else:
        return "Let's fight again!"

alphabet_war('wq')

>>>
'Left side wins!'
>>>
```

[^^^](#CODEWARS)

---

#### xor

```py
def xor(a,b):
    if a == True and b == True:
        return False
    elif a == False and b == True:
        return True
    elif a == True and b == False:
        return True
    else:
        return False

xor(False, False)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### find_array

```py
#DONE - https://www.codewars.com/kata/59a2a3ba5eb5d4e609000055/train/python

def find_array(arr1, arr2):
    l = []  
    if len(arr1) == 0 or len(arr2) == 0:
        return l
    elif arr2[-1] > len(arr1):
        l.append(arr1[arr2[-2]])
        return l
    else:
        x = 0
        while x < len(arr2):
            l.append(arr1[arr2[x]])
            x+=1

    return l

find_array([0, 3, 4], [1,2])

>>>
[3, 4]
>>>
```

[^^^](#CODEWARS)

---

#### two_oldest_ages

```py
#DONE - https://www.codewars.com/kata/511f11d355fe575d2c000001/train/python

def two_oldest_ages(ages):
    r = []
    ages.sort()
    ages.reverse()
    r = ages[:2]
    r.reverse()
    return r
two_oldest_ages([1, 5, 87, 45, 8, 8])

>>>
[45, 87]
>>>
```

[^^^](#CODEWARS)

---

#### tap_code_translation

```py
#DONE - https://www.codewars.com/kata/605f5d33f38ca800322cb18f/train/python

def tap_code_translation(text):
    repo = {'a':'. .', 'b':'. ..', 'c':'. ...', 'd':'. ....', 'e':'. .....',
            'f':'.. .', 'g':'.. ..', 'h':'.. ...', 'i':'.. ....', 'j':'.. .....', 'k':'. ...',
            'l':'... .', 'm':'... ..', 'n':'... ...', 'o':'... ....', 'p' : '... .....',
            'q':'.... .', 'r':'.... ..', 's' : '.... ...', 't':'.... ....', 'u':'.... .....',
            'v':'..... .', 'w':'..... ..', 'x':'..... ...', 'y':'..... ....', 'z':'..... .....'}

    l = []
    for ch in text:
        for chars in repo.keys():
            if ch == chars:
                l.append(repo[ch])

    str1 = ' '.join(l)
    return str1


tap_code_translation('taps')

>>>
'.... .... . . ... ..... .... ...'
>>>
```

[^^^](#CODEWARS)

---

#### accum

```py
#DONE - https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/python

def accum(s):
    ss = s.lower()
    ls = len(s)
    l, res = [],[]
    l.append(ss[0].upper())

    x = 1
    while x < ls:
        chars = (x)*ss[x]
        ch = chars[0].upper()
        l.append(ch+chars)
        x += 1

    str1 = '-'.join(l)
    return str1

accum('ZpglnRxqenU')

>>>
'Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu'
>>>
```

[^^^](#CODEWARS)

---

#### switcheroo

```py
#DONE - https://www.codewars.com/kata/57f759bb664021a30300007d/train/python
#
# BS
#
# return ((string.replace('a','x')).replace('b','a')).replace('x','b')
#

def switcheroo(s):
    l = []
    for chars in s:
        if chars == 'a':
            x = chars.replace('a','b')
            l.append(x)
        elif chars == 'b':
            x = chars.replace('b','a')
            l.append(x)
        else:
            l.append(chars)
    str1 = ''.join(l)
    return str1

switcheroo('abc')

>>>
'bac'
>>>
```

[^^^](#CODEWARS)

---

#### alternate_case

```py
#DONE - https://www.codewars.com/kata/57a62154cf1fa5b25200031e/train/python
#
# BS
#
# return s.swapcase()
#

def alternate_case(s):
    l = []
    for chars in s:
        if chars.isupper() == True:
            x = chars.lower()
            l.append(x)
        elif chars.islower() == True:
            x = chars.upper()
            l.append(x)
        else:
            l.append(chars)
    str1 = ''.join(l)
    return str1

alternate_case('Hello World')

>>>
'hELLO wORLD'
>>>
```

[^^^](#CODEWARS)

---

#### to_acronym

```py
#DONE - https://www.codewars.com/kata/57a60bad72292d3e93000a5a/train/python

def to_acronym(inp):
    inpL = inp.split()
    r = [chars[0] for chars in inpL]
    str1 = ''.join(r)
    return str1.upper()

to_acronym("hyper text markup language")

>>>
'HTML'
>>>
```

[^^^](#CODEWARS)

---

#### last

```py
def last(lst):
    if len(lst) == 0:
        return None
    else:
        return lst[-1]

last([1,2,3])

>>>
3
>>>
```

[^^^](#CODEWARS)

---

#### mouth_size

```py
#DONE - https://www.codewars.com/kata/57ec8bd8f670e9a47a000f89/train/python

def mouth_size(animal):
    cor = animal.lower()
    if cor == 'alligator':
        return 'small'
    else:
        return 'wide'

mouth_size('alliGator')

>>>
'small'
>>>
```

[^^^](#CODEWARS)

---

#### is_divisble

```py
#DONE - https://www.codewars.com/kata/5545f109004975ea66000086/train/python

#
# BS
#
# return n % x == 0 and n % y == 0
#

def is_divisible(n,x,y):
    if n%x == 0 and n%y == 0:
        return True
    else:
        return False

is_divisible(12,3,4)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### factorial

```py
def factorial(n):

    # 4 = (4*3*2*1)
    # how to count factorial
    fact = 1
    for i in range(1,n + 1):
        fact = fact*i
    print(fact)


factorial(5)

>>>
120
>>>
```

[^^^](#CODEWARS)

---


#### count_squares

```py
#DONE - https://www.codewars.com/kata/5763bb0af716cad8fb000580/train/python

def count_squares(cuts):
    #a1 = (2x4) = 8
    #a2 = (2x9+(1x8)) = 26
    #a3 = (2x16+(2x12)) = 32+24 = 56
    #a4 = (2x25+(3x16)) = 50+48 = 98
    #a5 = (2x36+(4x20)) = 72+80 = 152

    a = 1+cuts
    b1 = cuts-1
    b2 = cuts*4

    return (2*(a*a))+(b1*b2)

count_squares(23)

>>>
3176
>>>
```

[^^^](#CODEWARS)

---

#### sum_the_strings

```py
#DONE - https://www.codewars.com/kata/5966e33c4e686b508700002d/train/python

def sum_str(a, b):
    if len(a) == 0  and len(b) == 0:
        return str(0)
    elif len(a) == 0:
        return b
    elif len(b) == 0:
        return a
    else:
        f = int(a)+int(b)
        return str(f)

sum_str("4","5")

>>>
'9'
>>>
```

[^^^](#CODEWARS)

---

#### shorten_to_date

```py
#INP - https://www.codewars.com/kata/56b0ff16d4aa33e5bb00008e/train/python

def shorten_to_date(long_date):
    s = long_date.replace(',','')
    l = s.split()

    l.pop(-1)
    print(l)

    str1 = ' '.join(l)
    return str1

shorten_to_date("Monday February 2, 8pm")

>>>
['Monday', 'February', '2']
'Monday February 2'
>>>
```

[^^^](#CODEWARS)

---

#### split_and_merge  

```py
#DONE - https://www.codewars.com/kata/57280481e8118511f7000ffa/train/python

def split_and_merge(string_, separator):
    l = []

    #convert the words to list elements
    inpL = string_.split()

    for chars in inpL:
        str1 = separator.join(chars)
        l.append(str1)
    str2 = ' '.join(l)
    return str2

split_and_merge("My name is John","-")

>>>
'M-y n-a-m-e i-s J-o-h-n'
>>>
```

[^^^](#CODEWARS)

---

#### greet

```py
#DONE - https://www.codewars.com/kata/55225023e1be1ec8bc000390/train/python

def greet(name):
    if name == 'Johnny':
        return 'Hello, my love!'
    else:
        return "Hello, " +name+"!"

greet('Jim')

>>>
'Hello, Jim!'
>>>
```

[^^^](#CODEWARS)

---

#### reverse_sequence

```py
#DONE - https://www.codewars.com/kata/5a00e05cc374cb34d100000d/train/python

def reverse_seq(n):
    return [nums for nums in range(1,n+1)][::-1]

reverse_seq(5)

>>>
[5, 4, 3, 2, 1]
>>>
```

[^^^](#CODEWARS)

---

#### multiplication_table

```py
#DONE - https://www.codewars.com/kata/534d2f5b5371ecf8d2000a08/train/python

def multiplication_table(size):    
    ns = size+1
    res = []
    x = 1
    while x < ns:
        lx = [nums for nums in range(x,ns*x,x)]
        res.append(lx)
        x += 1
    return res

multiplication_table(2)

>>>
[[1, 2], [2, 4]]
>>>

def multiplication_table(size):    
    ns = size+1
    res = []
    x = 1
    while x < ns:
        lx = [nums for nums in range(x,ns*x,x)]
        res.append(lx)
        x += 1
    return res

multiplication_table(3)

>>>
[[1, 2, 3], [2, 4, 6], [3, 6, 9]]
>>>

def multiplication_table(size):    
    ns = size+1
    res = []
    x = 1
    while x < ns:
        lx = [nums for nums in range(x,ns*x,x)]
        res.append(lx)
        x += 1
    return res

multiplication_table(4)

>>>
[[1, 2, 3, 4], [2, 4, 6, 8], [3, 6, 9, 12], [4, 8, 12, 16]]
>>>
```

[^^^](#CODEWARS)

---

#### is_pangram

```py
#DONE - https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/python

def is_pangram(s):
    abc = 'abcdefghijklmnopqrstuvwxyz'

    c = s.replace(' ', '').replace(',','').replace('!','').replace('.','')
    cc = c.replace('1','').replace('2','').replace('3','').replace('4','').replace('5','').replace('6','').replace('7','').replace('8','').replace('9','').replace('0','')
    cc = cc.lower()

    l = []
    for chars in abc:
        if chars not in cc:
            l.append(chars)


    if len(l) > 0:
        return False
    else:
        return True


is_pangram("The quick, brown fox jumps over the lazy dog!")

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### alternate

```py
#DONE - https://www.codewars.com/kata/62a611067274990047f431a8/train/python

def alternate(n, first_value, second_value):
    l = []
    x = 0
    while x < n//2:
        l.append(first_value)
        l.append(second_value)
        x+=1

    if n%2 == 0:
        return l
    else:
        l.append(first_value)
        return l



alternate(5, True, False)

>>>
[True, False, True, False, True]
>>>
```

[^^^](#CODEWARS)

---

#### compare

```py
#DONE - https://www.codewars.com/kata/63f3c61dd27f3c07cc7978de/train/python

def compare(a, b):

    #int into the list
    la = [int(nums) for nums in str(a)]
    lb = [int(nums) for nums in str(b)]

    #reverse the list
    rlb = [lb[1], lb[0]]

    if la == lb:
        return '100%'
    elif la != lb and la == rlb:
        return '100%'
    elif la[0] == lb[0] or la[1] == lb[1]:
        return '50%'
    elif la[0] == rlb[0] or la[1] == rlb[1]:
        return '50%'
    else:
        return '0%'

compare(23,31)

>>>
'50%'
>>>
```

[^^^](#CODEWARS)

---

#### sequence_sum

```py
#DONE - https://www.codewars.com/kata/586f6741c66d18c22800010a/train/python

def sequence_sum(begin_number, end_number, step):
    return sum([nums for nums in range(begin_number, end_number+1, step)])

sequence_sum(2, 6, 2)

>>>
12
>>>
```

[^^^](#CODEWARS)

---

#### digitize

```py
#DONE - https://www.codewars.com/kata/5583090cbe83f4fd8c000051/train/python

def digitize(n):
    l = [int(nums) for nums in str(n)]
    return l[::-1]

digitize(123)

>>>
[3, 2, 1]
>>>
```

[^^^](#CODEWARS)

---

#### product_of_largest_num

```
- find the largest and the second largest number in the list
- you can also use sort() function
```

```py
#DONE - https://www.codewars.com/kata/5784c89be5553370e000061b/train/python

def max_product(a):
    l = []
    first = max(a)
    l.append(first)
    a.remove(first)

    print(l)
    print(a)

    second = max(a)
    l.append(second)

    print(l)

    return l[0]*l[1]
max_product([2, 1, 5, 0, 4, 3])

>>>
[5]
[2, 1, 0, 4, 3]
[5, 4]
20
>>>
```

[^^^](#CODEWARS)

---

#### index_of_an_element

```py
#DONE - https://www.codewars.com/kata/5703c093022cd1aae90012c9/train/python

def find(a, e):
    return a.index(e) if e in a else 'Not found'

find([2,3,5,7,11], 5)

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### name_shuffler

```py
#DONE - https://www.codewars.com/kata/559ac78160f0be07c200005a/train/python

def name_shuffler(str_):
    name = str_.split()
    x = name[::-1]
    str1 = ' '.join(x)
    return str1

name_shuffler('attila torok')

>>>
'torok attila'
>>>
```

[^^^](#CODEWARS)

---

#### did_she_say_hello - INP

```py
#DONE - https://www.codewars.com/kata/56a4addbfd4a55694100001f/train/python

def validate_hello(greetings):

    l=["hello","ciao","salut","hallo","hola","ahoj","czesc"]

    cl_greetings = greetings.replace('!', '').replace(':','').replace(';','').replace(',','').replace('?', '').replace('.', '')
    lg = cl_greetings.split()


    lres_1 = [vals.lower() for vals in lg]
    print(lres_1)


    x = [vals for vals in lres_1 if vals in l]

    if len(x) != 0:
        return True
    else:
        return False



validate_hello('Hallo, wie geht\'s dir?')

>>>
['hallo', 'wie', "geht's", 'dir']
True
>>>
```

[^^^](#CODEWARS)

---

#### reverse_letter

```py
#DONE - https://www.codewars.com/kata/58b8c94b7df3f116eb00005b/train/python

def reverse_letter(string):
    l = [chars for chars in string if chars.isalpha()]   
    l.reverse()
    str1 = "".join(l)
    return str1

reverse_letter('ab23c')

>>>
'cba'
>>>
```

[^^^](#CODEWARS)

---

#### get_sum

```py
#DONE - https://www.codewars.com/kata/55f2b110f61eb01779000053/train/python

def get_sum(a,b):
    if a < b:
        return sum([n for n in range(a,b+1)])
    else:
        return sum([n for n in range(b,a+1)])

get_sum(-1,0)

>>>
-1
>>>
```

[^^^](#CODEWARS)

---

#### stray

```py
#DONE - https://www.codewars.com/kata/57f609022f4d534f05000024/train/python

def stray(arr):
    l = [num for num in arr if arr.count(num) == 1]
    for num in l:
        return num

stray([1, 1, 1, 1, 1, 1, 2])

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### find_multiples

```py
#DONE - https://www.codewars.com/kata/58ca658cc0d6401f2700045f/train/python

def find_multiples(integer, limit):
    return [num for num in range(1,limit+1) if num%integer == 0]

find_multiples(5, 25)

>>>
[5, 10, 15, 20, 25]
>>>
```

[^^^](#CODEWARS)

---

#### digital_root

```py
#DONE - https://www.codewars.com/kata/541c8630095125aba6000c00/train/python

def digital_root(n):
    l1 = [int(num) for num in str(n)]

    res1 = sum(l1)

    if len(str(res1)) == 1:
        return res1
    else:
        l2 = [int(num) for num in str(res1)]
        res2 = sum(l2)
        if len(str(res2)) == 1:
            return sum(l2)
        else:
            l3 = [int(num) for num in str(res2)]
            return sum(l3)

digital_root(493193)

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### high_and_low

```py
#DONE - https://www.codewars.com/kata/554b4ac871d6813a03000035/train/python

#
# BS
#
# nn = [int(s) for s in numbers.split(" ")]
#

import re

def high_and_low(numbers):

    #Filter positive and negative integers from string
    l = [int(d) for d in re.findall(r'-?\d+', numbers)]
    mx = max([num for num in l])
    mn = min([num for num in l])
    return (f'{mx} {mn}')

high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")

>>>
'42 -9'
>>>
```

[^^^](#CODEWARS)

---

#### diamond

```py
#DONE - https://www.codewars.com/kata/5503013e34137eeeaa001648/train/python

def diamond(n):

    if n%2 == 0 or n<0:
        return None
    else:
        x = [num*'*' for num in range(n+1) if num%2 == 1]
        x1 = [str(ch) + '\n' for ch in x]
        x2 = []
        x2.append(x1[-1])
        x1.pop(-1)
        test = [num for num in range(1,n)]
        pos = ((n-1)//2)
        ws = [num*' ' for num in range(1,n)][:pos]
        ws.reverse()
        #add each element in both list
        wws = [ws[i] + x1[i] for i in range(len(ws))]
        x3 = wws.copy()
        x3.reverse()
        wws.extend(x2)
        wws.extend(x3)
        res = "".join(wws)
        return res

diamond(5)

>>>
'  *\n ***\n*****\n ***\n  *\n'
>>>
```

[^^^](#CODEWARS)

---

#### isLeapYear

```py
#DONE - https://www.codewars.com/kata/526c7363236867513f0005ca/train/python

def isLeapYear(year):
    v1 = (year % 4 == 0)
    v2 = (year % 100 != 0)
    v3 = (year % 400 == 0)
    return v1 and (v2 or v3)

isLeapYear(1984)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### create_phone_number

```py
#DONE - https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/python

def create_phone_number(n):

    n1 = [str(ch) for ch in n[:3]]
    n2 = [str(ch) for ch in n[3:6]]
    n3 = [str(ch) for ch in n[6:]]

    s1 = "".join(n1)
    s2 = "".join(n2)
    s3 = "".join(n3)

    return (f'({s1}) {s2}-{s3}')

create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])

>>>
'(123) 456-7890'
>>>
```

[^^^](#CODEWARS)

---

#### find_it

```py
#DONE - https://www.codewars.com/kata/54da5a58ea159efa38000836/train/python

def find_it(seq):
    l = [n for n in seq if seq.count(n)%2 == 1]
    return l[0]

find_it([5,5,5])  

>>>
5
>>>
```

[^^^](#CODEWARS)

---

#### args_count

```py
#DONE - https://www.codewars.com/kata/5c44b0b200ce187106452139/train/python

def args_count(*a,**b):
    return len(a)+len(b)

args_count(2,a=1)

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### alphanumeric

```py
#DONE - https://www.codewars.com/kata/526dbd6c8c0eb53254000110/train/python

#
# BS
#
# return string.isalnum()
#

def alphanumeric(pwd):

    l = [chars for chars in pwd]
    lx = []

    for chars in l:
        if chars.isalpha() or chars.isdigit():
            lx.append(True)

    if len(l) == 0:
        return False
    elif len(l) == len(lx):
        return True
    else:
        return False

alphanumeric('axbs34.0')

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### unscramble_eggs

```py
#DONE - https://www.codewars.com/kata/55ea5650fe9247a2ea0000a7/train/python

def unscramble_eggs(word):
    if 'egg' in word:
        word = word.replace('egg','')
        return word
    else:
        return word

unscramble_eggs('ceggodegge heggeregge')

>>>
'code here'
>>>
```

[^^^](#CODEWARS)

---

#### solution

```py
#INP - https://www.codewars.com/kata/514b92a657cdc65150000006/train/python

def solution(number):

    return sum([num for num in range(1, number) if num%3 == 0 or num%5 == 0])

solution(10)

>>>
23
>>>
```

[^^^](#CODEWARS)

---

#### most_frequent_item_count

```py
#DONE - https://www.codewars.com/kata/56582133c932d8239900002e/train/python

def most_frequent_item_count(collection):
    if len(collection) == 0:
        return 0
    else:
        return max([collection.count(nums) for nums in collection])


most_frequent_item_count([3, -1, -1])

>>>
2
>>>
```

[^^^](#CODEWARS)

---

#### pythagorean_triple

```py
#DONE - https://www.codewars.com/kata/5951d30ce99cf2467e000013/train/python

def pythagorean_triple(integers):
    integers.sort()
    if (integers[0]*integers[0])+(integers[1]*integers[1]) == (integers[2]*integers[2]):
        return True
    else:
        return False

pythagorean_triple([3,4,5])

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### generate_hashtag

```py
#DONE - https://www.codewars.com/kata/52449b062fb80683ec000024/train/python

#
# nice
#
# return False if (len(s) == 0 or len(output) > 140) else output
#

def generate_hashtag(s):
    l = s.split()    
    l1 = [chars.capitalize() for chars in l]    
    s1 = "".join(l1)
    s1 = '#'+s1

    if len(s1) > 140 or len(s) == 0:
        return False
    else:
        return s1


generate_hashtag('hello world')

>>>
'#HelloWorld'
>>>
```

[^^^](#CODEWARS)

---

#### luck_check

```py
#DONE - https://www.codewars.com/kata/5314b3c6bb244a48ab00076c/train/python

def luck_check(string):
    co = len(str(string))
    half = co//2
    l = [str(nums) for nums in str(string)]
    l1 = l[:co//2]
    l2 = l[co//2:]
    ln1 = [int(num) for num in l1]
    ln2 = [int(num) for num in l2]

    if len(ln1) != len(ln2):
        ln2.pop(0)
        if sum(ln1) == sum(ln2):
            return True
        else:

            return False
    else:
        if sum(ln1) == sum(ln2):
            return True
        else:
            return False

luck_check(683000)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### number_joy

```py
#DONE - https://www.codewars.com/kata/570523c146edc287a50014b1/train/python

def number_joy(n):

    #int to list
    l = [int(nums) for nums in str(n)]

    r1 = sum(l)

    r2 = str(r1)
    r2 = r2[::-1]

    f = int(r1)*int(r2)

    if f == n and n%r1==0:
        return True, 'Harshad and digit '+str(r1)+', and '+str(r1)+'x'+str(r2)+' = '+str(n)
    elif f != n and n%r1==0:
        return False, 'Harshad but digit '+str(r1)+', and '+str(r1)+'x'+str(r2)+' does not equal '+str(n)
    else:
        return False, 'Not a Harshad number'

number_joy(1998)

>>>
(False, 'Harshad but digit 27, and 27x72 does not equal 1998')
>>>
```

[^^^](#CODEWARS)

---

#### is_sorted_and_how

```py
#DONE - https://www.codewars.com/kata/580a4734d6df748060000045/train/python

def is_sorted_and_how(arr):

    la = arr.copy()  
    ld = arr.copy()

    la.sort()   
    ld.sort()
    ld = ld[::-1]


    if arr == la:
        return 'yes, ascending'
    elif arr == ld:
        return 'yes, descending'
    else:
        return 'no'

is_sorted_and_how([1,2,5,4])

>>>
'no'
>>>
```

[^^^](#CODEWARS)

---

#### open_or_senior

```py
#DONE - https://www.codewars.com/kata/5502c9e7b3216ec63c0001aa/train/python

def open_or_senior(data):

    l = []
    for nums in data:
        if nums[0] >= 55 and nums[1] > 7:
            l.append("Senior")
        else:
            l.append("Open")

    return l

open_or_senior([(16, 23),(73,1),(56, 20),(1, -1)])

>>>
['Open', 'Open', 'Senior', 'Open']
>>>
```

[^^^](#CODEWARS)

---

#### get_positions

```py
#DONE - https://www.codewars.com/kata/56d8f14cba01a83cdb0002a2/train/python

def get_positions(n):
    l1 = [0,1,2]
    l2 = [0,0,0,1,1,1,2,2,2]
    l3 = [0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2]
    f = []

    f.append(l1[n%3])
    f.append(l2[n%9])
    f.append(l3[n%27])

    return tuple(f)

get_positions(98)

>>>
(2, 2, 1)
>>>
```

[^^^](#CODEWARS)

---

#### incrementer

```py
#DONE - https://www.codewars.com/kata/590e03aef55cab099a0002e8/train/python

def incrementer(nums):
    l = [n for n in range(1,len(nums)+1)]
    #Element-wise addition of 2 lists
    m1 = [a+b for a,b in zip(l, nums)]
    m2 = [str(n) for n in m1]

    f = []

    for n in m2:
        if len(n)>1:
            f.append(n[1])
        else:
            f.append(n)
    return [int(n) for n in f]

incrementer([3, 6, 9, 8, 9])

>>>
[4, 8, 2, 2, 4]
>>>
```

[^^^](#CODEWARS)

---

#### largest_elements

```py
#DONE - https://www.codewars.com/kata/53d32bea2f2a21f666000256/train/python

#
# BS
#
#xs.sort()
#return xs[-n:]
#

def largest(n,xs):
    xs.sort()
    xs.reverse()
    fin = xs[:n]
    fin.sort()
    return fin

largest(2,[10,9,8,7,6,5,4,3,2,1])

>>>
[9, 10]
>>>
```

[^^^](#CODEWARS)

---

#### fizzbuzz

```py
#DONE - https://www.codewars.com/kata/5300901726d12b80e8000498/train/python

def fizzbuzz(n):

    l = []

    for num in range(1,n+1):
        if num%15 == 0:
            l.append('fizzbuzz')
        elif num%5 == 0:
            l.append('buzz')
        elif num%3 == 0:
            l.append('fizz')
        else:
            l.append(num)
    return l

fizzbuzz(15)

>>>
[1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz']
>>>
```

[^^^](#CODEWARS)

---

#### html_special_chars

```py
#DONE but wrong in CW - https://www.codewars.com/kata/56bcaedfcf6b7f2125001118/train/python

#< --> &lt;
#> --> &gt;
#" --> &quot;
#& --> &amp;

def html_special_chars(data):
    for ch in data:
        if ch == '<':
            data = data.replace(ch,'&lt;')
        elif ch == '>':
            data = data.replace(ch,'&gt;')
        elif ch == '"':
            data = data.replace(ch,'&quot;')
        elif ch == '&':
            data = data.replace(ch,'&amp;')
    return data

html_special_chars("<h2>Hello World</h2>")

>>>
'&lt;h2&gt;Hello World&lt;/h2&gt;'
>>>
```

[^^^](#CODEWARS)

---

#### volumes_of_cuboids

```py
#DONE - https://www.codewars.com/kata/58cb43f4256836ed95000f97/train/python

#
# BS
#
# return abs((a[1]*a[2]*a[0])-b[1]*b[2]*b[0])
#

def find_difference(a, b):

    ar = (a[0]*a[1]*a[2])
    br = (b[0]*b[1]*b[2])

    if ar > br:
        return ar-br
    else:
        return br-ar

find_difference([28, 21, 2], [26, 12, 20])

>>>
5064
>>>
```

[^^^](#CODEWARS)

---

#### vowel_one

```py
#DONE - https://www.codewars.com/kata/580751a40b5a777a200000a1/train/python

def vowel_one(s):

    for vowel in s:
        if vowel in ('a','e','i','o','u','A','E','I','O','U'):
            s = s.replace(vowel, '1')
        else:
            s = s.replace(vowel, '0')
    return s

vowel_one('Hello')

>>>
'01001'
>>>
```

[^^^](#CODEWARS)

---

#### is_square

```py
#DONE - https://www.codewars.com/kata/54c27a33fb7da0db0100040e/train/python

#
# BS
#
# return n >= 0 and (n**0.5) % 1 == 0
#

def is_square(n):   

    simp = [nums*nums for nums in range(0,100)]

    if n in simp:
        return True
    else:
        return False


is_square(24)

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### changing_letters

```py
#DONE - https://www.codewars.com/kata/5831c204a31721e2ae000294/solutions/python

#
# changing_letters
#
# BS
#
#for vowel in st:
#    if vowel in ('a','e','i','o','u'):
#          st = st.replace(vowel, vowel.upper())

s = "HelloWorld"
fin = s.replace('a','A').replace('e','E').replace('i','I').replace('o','O').replace('u','U')
print(fin)

>>>
HEllOWOrld
>>>
```

[^^^](#CODEWARS)

---

#### expanded_form

```py
#DONE - https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/python

def expanded_form(num):

    conv = str(num)
    cr = len(conv)
    l = [nums for nums in conv if nums != '0']
    li = [nums for nums in conv]

    x = []
    for nums in range(0,cr):
        x.append(nums*'0')

    x.reverse()

    #Element-wise addition of 2 lists
    fin = [a+b for a,b in zip(li, x)]
    ff = []
    for nums in fin:
        if nums[0] != '0':
            ff.append(nums)

    str1 = " + ".join(ff)
    return str1    

expanded_form(70304)

>>>
'70000 + 300 + 4'
>>>
```

[^^^](#CODEWARS)

---

#### is_square2

```py
#DONE - https://www.codewars.com/kata/56853c44b295170b73000007/train/python

def is_square(arr):

    simp = [nums*nums for nums in range(0,1000)]
    h = []
    for n in arr:
        if n not in simp:
            h.append(n)    

    if len(arr) == 0:
        return None
    elif len(h)>0:
        return False
    else:
        return True

is_square([1,2,3,4,5])

>>>
False
>>>
```

[^^^](#CODEWARS)

---

#### kooka_counter

```py
#DONE - https://www.codewars.com/kata/58e8cad9fd89ea0c6c000258/solutions/python

def kooka_counter(laughing):
    ed = laughing.replace('a','').replace('A','')
    l=[]

    if len(laughing) == 0:
        return 0
    elif ed[0] == 'h':
        l.append('h')
        for ch in ed:
            if ch != l[-1]:
                l.append(ch)
        return len(l)
    elif ed[0] == 'H':
        l.append('H')
        for ch in ed:
            if ch != l[-1]:
                l.append(ch)
        return len(l)


kooka_counter("HAhaHAhahahahahahaHAhaHAHAHA")

>>>
7
>>>
```

[^^^](#CODEWARS)

---

#### get_count

```py
#DONE - https://www.codewars.com/kata/54ff3102c1bad923760001f3/solutions/python

def get_count(sentence):
    return len([ch for ch in sentence if ch in 'aeiou'])

get_count('aeiou')

>>>
5
>>>
```

[^^^](#CODEWARS)

---

#### shorter_reverse_longer

```py
#DONE - https://www.codewars.com/kata/54557d61126a00423b000a45/train/python

def shorter_reverse_longer(a,b):

    #reverse the string
    if len(a) >= len(b):
        return b+a[::-1]+b
    else:
        return a+b[::-1]+a

shorter_reverse_longer("first", "abcde")

>>>
abcdetsrifabcde
>>>
```

[^^^](#CODEWARS)

---

#### get_sum_of_digits

```py
#DONE - https://www.codewars.com/kata/563d59dd8e47a5ed220000ba/train/python

#
# BS
#
# return sum(int(d) for d in str(n))
#

def get_sum_of_digits(num):
    s = str(num)
    ls = [num for num in s]
    li = [int(num) for num in ls]
    return sum(li)

get_sum_of_digits(123)

>>>
6
>>>
```

[^^^](#CODEWARS)

---

#### solve

```py
#DONE - https://www.codewars.com/kata/5a29a0898f27f2d9c9000058/train/python

#the order is: uppercase letters, lowercase, numbers and special characters.

def solve(s):
    res = []

    isupper = [chars for chars in s if chars.isupper()]
    islower = [chars for chars in s if chars.islower()]
    isnumeric = [chars for chars in s if chars.isnumeric()]

    res.extend([len(isupper), len(islower), len(isnumeric), (len(s)-(len(isupper)+len(islower)+len(isnumeric)))])

    return res

solve("Codewars@codewars123.com")

>>>
[1, 18, 3, 2]
>>>
```

[^^^](#CODEWARS)

---

#### disemvowel

```py
#DONE - https://www.codewars.com/kata/52fba66badcd10859f00097e/solutions/python

#
# BS
#
# return "".join(c for c in string if c.lower() not in "aeiou")
#

def disemvowel(string_):
    x = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    l = [chars for chars in string_ if chars not in x]
    str1 = ''.join(l)
    return str1

disemvowel('HellO')

>>>
'Hll'
>>>
```

[^^^](#CODEWARS)

---

#### squares

```py
#DONE - https://www.codewars.com/kata/5546180ca783b6d2d5000062/train/python

# multiply always with the latest result

#
# BS
#
# return [x**(2**i) for i in range(n)]
#

def squares(x, n):
    if n <= 0:
        return []
    else:
        l,fin = [], []
        l.append(x)
        x = 2
        while x < n+1:
            m = l[-1]*l[-1]
            l.append(m)
            x += 1
        return l


squares(2, 5)

>>>
[2, 4, 16, 256, 65536]
>>>
```

[^^^](#CODEWARS)

---

#### is_it_a_num

```py
#DONE - https://www.codewars.com/kata/596343a24489a8b2a00000a2/train/python

#find the number in the string

def is_it_a_num(s):

    l = [vals for vals in s if vals.isdigit()]    
    str1 = ''.join(l)

    if len(l) == 11 and l[0] == '0':
        return str1
    else:
        return "Not a phone number"

is_it_a_num('S:)0207ERGQREG88349F82!efRF)')

>>>
'02078834982'
>>>
```

[^^^](#CODEWARS)

---

#### sort_dict

```py
#DONE - https://www.codewars.com/kata/53da6a7e112bd15cbc000012/train/python

def sort_dict(d):
    #l = d.items()
    sorted_dict = {}
    sorted_values = sorted(d.values())
    sorted_values.sort(reverse=True)

    for i in sorted_values:
        for k in d.keys():
            if d[k] == i:
                sorted_dict[k] = d[k]

    fin = sorted_dict.items()
    return [ch for ch in fin]

sort_dict({3:1, 2:2, 1:3})

>>>
[(1, 3), (2, 2), (3, 1)]
>>>
```

[^^^](#CODEWARS)

---

#### square_num

```py
#DONE - https://www.codewars.com/kata/5a805d8cafa10f8b930005ba/train/python

#
# BS
#
# return round(n ** 0.5) ** 2
#

def nearest_sq(n):
    simp = [numsk*numsk for numsk in range(0,2000)]
    simp.append(n)
    simp.sort()    
    x = simp.index(n)    
    l = []
    l.append(simp[x])
    l.append(simp[x+1])
    l.append(simp[x-1])    
    l.sort()    
    if l[1]-l[0]<l[2]-l[1]:
        return l[0]
    else:
        return l[2]

nearest_sq(200)

>>>
196
>>>
```

[^^^](#CODEWARS)

---

#### covfefe

```py
#DONE - https://www.codewars.com/kata/592fd8f752ee71ac7e00008a/train/python

def covfefe(s):

    l = s.split()
    print(l)

    #replace a list item with something
    for i in range(len(l)):
        if l[i] == 'coverage':
            l[i] = 'covfefe'

    ss = " ".join(l)
    print(ss)


    if "coverage" in s:
        return ss
    else:
        return s+" covfefe"

covfefe('coverage coverage')

>>>
['coverage', 'coverage']
covfefe covfefe
'covfefe covfefe'
>>>
```

[^^^](#CODEWARS)

---

#### between_extremes

```py
#DONE - https://www.codewars.com/kata/56d19b2ac05aed1a20000430/train/python

def between_extremes(numbers):
    return max(numbers) - min(numbers)


between_extremes([21, 34, 54, 43, 26, 12])

>>>
42
>>>
```

[^^^](#CODEWARS)

---

#### cube_checker

```py
#DONE - https://www.codewars.com/kata/58d248c7012397a81800005c/train/python

def cube_checker(volume, side):
    if volume == side*side*side and volume > 0:
        return True
    else:
        return False

cube_checker(125, 5)

>>>
True
>>>
```

[^^^](#CODEWARS)

---

#### trim

```py
#DONE - https://www.codewars.com/kata/563fb342f47611dae800003c/train/python
def trim(phrase, size):
    if len(phrase) <= size:
        return phrase
    elif size <= 3:
        return phrase[:size]+'...'
    else:
        return phrase[:(size-3)]+'...'

trim("Creating kata is fun", 14)

>>>
'Creating ka...'
>>>
```

[^^^](#CODEWARS)

---

#### sort_by_length

```py
#DONE - https://www.codewars.com/kata/57ea5b0b75ae11d1e800006c/train/python

def sort_by_length(arr):
    len1 =  [len(vals) for vals in arr]

    ### join two lists into a dictionary
    dic = dict(zip(arr,len1))

    ### sort a dictionary by value
    thisdict = dict(sorted(dic.items(), key=lambda item: item[1]))

    return [x for x in thisdict]


sort_by_length(['beg', 'i', 'life', 'to'])

>>>
['i', 'to', 'beg', 'life']
>>>
```

[^^^](#CODEWARS)

---

#### no_odds

```py
#DONE - https://www.codewars.com/kata/51fd6bc82bc150b28e0000ce/train/python

def no_odds(values):
    return [nums for nums in values if nums%2 == 0]

no_odds([0, 1, 2, 3])

>>>
[0, 2]
>>>
```

[^^^](#CODEWARS)

---

#### keep_order

```py
#DONE - https://www.codewars.com/kata/582aafca2d44a4a4560000e7/train/python

def keep_order(ary, val):
    ary.append(val)
    ary.sort()
    return ary.index(val)

keep_order([1, 2, 3, 4, 7], 5)

>>>
4
>>>
```

[^^^](#CODEWARS)

---

#### contamination

```py
#DONE - https://www.codewars.com/kata/596fba44963025c878000039/train/python

def contamination(text, char):
    if len(text) == 0 or len(char) == 0:
        return ''
    else:
        return len(text)*char

contamination('abc', 'z')

>>>
'zzz'
>>>
```

[^^^](#CODEWARS)

---

#### tower_builder

```py
#DONE - https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/python

def tower_builder(n_floors):

    #creating odd range
    x = [num  for num in range(1, (n_floors*n_floors+1)) if num%2 == 1]
    #print(x)

    #slice it till n_floors
    xx = x[:n_floors]
    #print(xx)

    #transfer it to the list
    xxx = [vals*'*' for vals in xx]
    #print(xxx)

    xxx.reverse()
    #print(xxx)

    l = []
    x = 0
    while x < n_floors:
        l.append(x*' ' + xxx[x] + x*' ')
        x += 1

    l.reverse()

    for vals in l:
        print(vals)


tower_builder(4)

>>>
   *   
  ***  
 *****
*******
>>>
```

[^^^](#CODEWARS)

---

#### second_symbol

```py
#DONE - https://www.codewars.com/kata/63f96036b15a210058300ca9/train/python

def second_symbol(s, symbol):
    if s.count(symbol) <= 1:
        return -1
    else:
        return (s.index(symbol, (s.index(symbol))+1, len(s)))

second_symbol('Hello world!!!','o')

>>>
7
>>>
```

[^^^](#CODEWARS)

---


#### powers_of_two

```py
#DONE - https://www.codewars.com/kata/57a083a57cb1f31db7000028/train/python

def powers_of_two(n):
    l = []    
    for nums in range(n+1):
        l.append(2**nums)   
    return l

powers_of_two(4)

>>>
[1, 2, 4, 8, 16]
>>>
```

[^^^](#CODEWARS)

---

#### Replace_all_dots

```py
def replace_dots(str):
    return str.replace(".", "-")

replace_dots("one.two.three")

>>>
'one-two-three'
>>>
```

[^^^](#CODEWARS)

---

#### String_Templates_BugFixing5

8 kyu

- [link](https://www.codewars.com/kata/55c90cad4b0fe31a7200001f/train/python)

```
Oh no! Timmy hasn't followed instructions very carefully and forgot how to use the new String Template feature, Help Timmy with his string template so it works as he expects!
```

```py
# DONE - https://www.codewars.com/kata/55c90cad4b0fe31a7200001f/train/python
def build_string(*args):
    return f"I like %s!" % ', '.join(map(str, args))

build_string('Cheese','Milk','Chocolate')

>>>
'I like Cheese, Milk, Chocolate!'
>>>
```

[^^^](#CODEWARS)

---

#### Vowel_remover

8 kyu

- [link](https://www.codewars.com/kata/5547929140907378f9000039/train/python)

```
Create a function called shortcut to remove all the lowercase vowels in a given string.
```

```
"hello"     -->  "hll"
"codewars"  -->  "cdwrs"
"goodbye"   -->  "gdby"
"HELLO"     -->  "HELLO"
```

```py
a = "szia szia Hello mivan"
m = ['e', 'u', 'i', 'o', 'a']

l = []
l2 = []
l3 = []

l.append(a)
l1 = [i for item in l for i in item.split()]
print(l1)

ll = len(l1)
x = 0
while x < ll:
    if l1[x].islower():
        l1[x] = "kicsi"    
    l3.append(l1[x])
    x += 1

print(l3)
str1 = ' '.join(l3)            
print(str1)
```

```
['szia', 'szia', 'Hello', 'mivan']
['kicsi', 'kicsi', 'Hello', 'kicsi']
kicsi kicsi Hello kicsi
```

[^^^](#CODEWARS)

---
