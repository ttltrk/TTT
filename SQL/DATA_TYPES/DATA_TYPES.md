
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

### DATA_TYPES

---

```
STRING
NUMERIC
DATE_TIME
OTHER
```

---

* [STRING](#STRING)
* [NUMERIC](#NUMERIC)
* [DATE_TIME](#DATE_TIME)
* [OTHER](#OTHER)

---

#### STRING

```
char(n)	- Fixed width character string	8,000 characters	Defined width
varchar(n)	- Variable width character string	8,000 characters	2 bytes + number of chars
varchar(max)	- Variable width character string	1,073,741,824 characters	2 bytes + number of chars
text	- Variable width character string	2GB of text data	4 bytes + number of chars
nchar	- Fixed width Unicode string	4,000 characters	Defined width x 2
nvarchar	- Variable width Unicode string	4,000 characters	 
nvarchar(max)	- Variable width Unicode string	536,870,912 characters	 
ntext	- Variable width Unicode string	2GB of text data	 
binary(n)	- Fixed width binary string	8,000 bytes	 
varbinary	- Variable width binary string	8,000 bytes	 
varbinary(max)	- Variable width binary string	2GB	 
image	- Variable width binary string	2GB	 
```

```sql


>>>

>>>
```

[^^^](#DATA_TYPES)

---

#### NUMERIC

```
bit	- Integer that can be 0, 1, or NULL	 
tinyint	- Allows whole numbers from 0 to 255	1 byte
smallint	- Allows whole numbers between -32,768 and 32,767	2 bytes
int	- Allows whole numbers between -2,147,483,648 and 2,147,483,647	4 bytes
bigint	- Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807
decimal(p,s)	- Fixed precision and scale numbers.
numeric(p,s)	- Fixed precision and scale numbers.
smallmoney	- Monetary data from -214,748.3648 to 214,748.3647	4 bytes
money	- Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807	8 bytes
float(n)	- Floating precision number data from -1.79E + 308 to 1.79E + 308.
real -	Floating precision number data from -3.40E + 38 to 3.40E + 38
```

```sql


>>>

>>>
```

[^^^](#DATA_TYPES)

#### DATE_TIME

```
datetime	- From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds	8 bytes
datetime2	- From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds	6-8 bytes
smalldatetime	- From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute	4 bytes
date	- Store a date only. From January 1, 0001 to December 31, 9999	3 bytes
time	- Store a time only to an accuracy of 100 nanoseconds	3-5 bytes
datetimeoffset	- The same as datetime2 with the addition of a time zone offset	8-10 bytes
timestamp	- Stores a unique number that gets updated every time a row gets created or modified. The timestamp value is based upon an internal clock and does not correspond to real time. Each table may have only one timestamp variable
```

```sql


>>>

>>>
```

[^^^](#DATA_TYPES)

#### OTHER

```
sql_variant	- Stores up to 8,000 bytes of data of various data types, except text, ntext, and timestamp
uniqueidentifier -	Stores a globally unique identifier (GUID)
xml	- Stores XML formatted data. Maximum 2GB
cursor -	Stores a reference to a cursor used for database operations
table	- Stores a result-set for later processing
```

```sql


>>>

>>>
```

[^^^](#DATA_TYPES)
