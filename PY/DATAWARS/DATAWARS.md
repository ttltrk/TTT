
---

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

---

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
