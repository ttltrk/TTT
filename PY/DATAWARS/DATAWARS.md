
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATAWARS

---

* [WORKING_WITH_ENGLISH_WORDS](#WORKING_WITH_ENGLISH_WORDS)

---

#### WORKING_WITH_ENGLISH_WORDS

```
- How many elements does this dataframe have?
df.info()
df.shape

- What is the value of the word microspectrophotometries?
df.loc['microspectrophotometries']
df.loc['microspectrophotometries', 'Value']

- What is the highest possible value of a word?
df['Value'].max()
df.max()
df.describe()

- Which of the following words have a Char Count of 7 and a Value of 87?
- 'pinfish','enfold','microbrew','superheterodyne','glowing'
df.loc[['pinfish','enfold','microbrew','superheterodyne','glowing']]

- What is the highest possible length of a word?
df.describe()

- What is the word with the value of 319?
df.sort_values(by=['Value'],ascending=False)
df.loc[df['Value']==319]

- What is the most common value?
df['Value'].value_counts().head()

- What is the shortest word with value 274?
df.loc[df['Value'] == 274].sort_values(by="Char Count")
df.loc[df['Value'] == 274, 'Char Count'].min()
df.loc[
    (df['Value'] == 274) &
    (df['Char Count'] == 20)
]

- Create a column Ratio which represents the 'Value Ratio' of a word
df['Ratio'] = df['Value'] / df['Char Count'].head()

- What is the maximum value of Ratio?
df['Ratio'].max()

- What word is the one with the highest Ratio?
df.sort_values(by='Ratio', ascending=False).head()
df.loc[df['Ratio'] == df['Ratio'].max()]

- How many words have a Ratio of 10?
df.loc[df["Ratio"] == 10].shape
df.query('Ratio == 10').shape

- What is the maximum Value of all the words with a Ratio of 10?
df.query('Ratio == 10').sort_values(by="Value", ascending=False)
df.loc[df['Ratio'] == 10, 'Value'].max()

- Of those words with a Value of 260, what is the lowest Char Count found?
df.query('Value == 260').sort_values(by='Char Count')
```

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

[^^^](#DATAWARS)

#### What is the shortest word with value 274?

```py
df.loc[df['Value'] == 274].sort_values(by="Char Count")

>>>
Char Count	Value
Word		
overprotectivenesses	20	274
countercountermeasure	21	274
psychophysiologically	21	274
>>>
```

```py
df.loc[df['Value'] == 274, 'Char Count'].min()

>>>
20
>>>
```

```py
df.loc[
    (df['Value'] == 274) &
    (df['Char Count'] == 20)
]

>>>
Char Count	Value
Word		
overprotectivenesses	20	274
>>>
```

[^^^](#DATAWARS)

#### Create a column Ratio which represents the 'Value Ratio' of a word

```py
df['Ratio'] = df['Value'] / df['Char Count']
df.head()

>>>
Char Count	Value	Ratio
Word			
aa	2	2	1.000000
aah	3	10	3.333333
aahed	5	19	3.800000
aahing	6	40	6.666667
aahs	4	29	7.250000
>>>
```

[^^^](#DATAWARS)

#### What is the maximum value of Ratio?

```py
df['Ratio'].max()

>>>
22.5
>>>
```

[^^^](#DATAWARS)

#### What word is the one with the highest Ratio?

```py
df.sort_values(by='Ratio', ascending=False).head()

>>>
Char Count	Value	Ratio
Word			
xu	2	45	22.500000
muzzy	5	111	22.200000
wry	3	66	22.000000
xyst	4	88	22.000000
pyx	3	65	21.666667
>>>
```

```py
df.loc[df['Ratio'] == df['Ratio'].max()]

>>>
Char Count	Value	Ratio
Word			
xu	2	45	22.5
>>>
```

[^^^](#DATAWARS)

#### How many words have a Ratio of 10?

```py
df.loc[df["Ratio"] == 10].shape

>>>
(2604, 3)
>>>
```

```py
df.query('Ratio == 10').shape

>>>
(2604, 3)
>>>
```

[^^^](#DATAWARS)

#### What is the maximum Value of all the words with a Ratio of 10?

```py
df.query('Ratio == 10').sort_values(by="Value", ascending=False)

>>>
Char Count	Value	Ratio
Word			
electrocardiographically	24	240	10.0
electroencephalographies	24	240	10.0
electroencephalographer	23	230	10.0
phonocardiographic	18	180	10.0
inconceivabilities	18	180	10.0
...	...	...	...
web	3	30	10.0
bug	3	30	10.0
elm	3	30	10.0
as	2	20	10.0
oe	2	20	10.0
2604 rows × 3 columns
>>>
```

```py
df.loc[df['Ratio'] == 10, 'Value'].max()

>>>
240
>>>
```

[^^^](#DATAWARS)

#### Of those words with a `Value` of `260`, what is the lowest `Char Count` found?

```py
df.query('Value == 260').sort_values(by='Char Count')

>>>
Char Count	Value	Ratio
Word			
hydroxytryptamine	17	260	15.294118
neuropsychologists	18	260	14.444444
psychophysiologist	18	260	14.444444
revolutionarinesses	19	260	13.684211
countermobilizations	20	260	13.000000
underrepresentations	20	260	13.000000
>>>
```

#### Find all words with Char Count > avg Char Count

```py
mean_char_count = df['Char Count'].mean()
mean_char_count

>>>
9.087628239623657
>>>

df.query('`Char Count` > @mean_char_count')

>>>
Char Count	Value
Word		
aardwolves	10	120
abacterial	10	72
abandoners	10	93
abandoning	10	81
abandonment	11	103
...	...	...
zygomorphies	12	176
zygomorphy	10	168
zygosities	10	154
zygospores	10	165
zymologies	10	146
67582 rows × 2 columns
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
