
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATAWARS

---

* [WORKING_WITH_ENGLISH_WORDS](#WORKING_WITH_ENGLISH_WORDS)

---

#### WORKING_WITH_ENGLISH_WORDS

#### head

```py
df.head()

>>>

Char Count	Value
Word		
aa	2	2
aah	3	10
aahed	5	19
aahing	6	40
aahs	4	29
>>>
```

[^^^](#DATAWARS)

#### How many elements does this dataframe have?

```py
df.info()

>>>
<class 'pandas.core.frame.DataFrame'>
Index: 172821 entries, aa to zyzzyvas
Data columns (total 2 columns):
 #   Column      Non-Null Count   Dtype
---  ------      --------------   -----
 0   Char Count  172821 non-null  int64
 1   Value       172821 non-null  int64
dtypes: int64(2)
memory usage: 4.0+ MB
>>>
```

```py
df.shape

>>>
(172821, 2)
>>>
```

[^^^](#DATAWARS)

#### What is the value of the word `microspectrophotometries`?

```py
df.loc['microspectrophotometries']

>>>
Char Count     24
Value         317
Name: microspectrophotometries, dtype: int64
>>>
```

```py
df.loc['microspectrophotometries', 'Value']

>>>
317
>>>
```

[^^^](#DATAWARS)

#### What is the highest possible value of a word?

```py
df['Value']

>>>
Word
aa             2
aah           10
aahed         19
aahing        40
aahs          29
            ...
zymotic      111
zymurgies    143
zymurgy      135
zyzzyva      151
zyzzyvas     170
Name: Value, Length: 172821, dtype: int64
>>>
```

```py
df['Value'].max()

>>>
319
>>>
```

```py
df.max()

>>>
Char Count     28
Value         319
dtype: int64
>>>
```

```py
df.describe()

>>>
Char Count	Value
count	172821.000000	172821.000000
mean	9.087628	107.754179
std	2.818285	39.317452
min	2.000000	2.000000
25%	7.000000	80.000000
50%	9.000000	103.000000
75%	11.000000	131.000000
max	28.000000	319.000000
>>>
```

[^^^](#DATAWARS)

#### Which of the following words have a Char Count of `7` and a Value of `87`?
#### 'pinfish','enfold','microbrew','superheterodyne','glowing'

```py
df.loc[['pinfish','enfold','microbrew','superheterodyne','glowing']]

>>>
Char Count	Value
Word		
pinfish	7	81
enfold	6	56
microbrew	9	106
superheterodyne	15	198
glowing	7	87
>>>
```

[^^^](#DATAWARS)

#### What is the highest possible length of a word?

```py
df.describe()

>>>
Char Count	Value
count	172821.000000	172821.000000
mean	9.087628	107.754179
std	2.818285	39.317452
min	2.000000	2.000000
25%	7.000000	80.000000
50%	9.000000	103.000000
75%	11.000000	131.000000
max	28.000000	319.000000
>>>
```

[^^^](#DATAWARS)

#### What is the word with the value of 319?

```py
df.sort_values(by=['Value'],ascending=False)

>>>
Char Count	Value
Word		
reinstitutionalizations	23	319
microspectrophotometries	24	317
microspectrophotometry	22	309
microspectrophotometers	23	308
immunoelectrophoretically	25	307
...	...	...
aba	3	4
baa	3	4
ab	2	3
ba	2	3
aa	2	2
172821 rows × 2 columns
>>>
```

```py
df['Value']==319

>>>
Word
aa           False
aah          False
aahed        False
aahing       False
aahs         False
             ...  
zymotic      False
zymurgies    False
zymurgy      False
zyzzyva      False
zyzzyvas     False
Name: Value, Length: 172821, dtype: bool
>>>
```

```py
df.loc[df['Value']==319]

>>>
Char Count	Value
Word		
reinstitutionalizations	23	319
>>>
```

[^^^](#DATAWARS)

#### What is the most common value?

```py
df['Value'].value_counts().head()

>>>
Value
93     1965
100    1921
95     1915
99     1907
92     1902
Name: count, dtype: int64
>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```

####

```py

>>>

>>>
```
