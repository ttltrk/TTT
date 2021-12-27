
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### OPENPYXL

---

```

```

---

* [CREATING_WORKBOOK](#CREATING_WORKBOOK)
* [ACCESSING_WORKBOOK](#ACCESSING_WORKBOOK)
* [HOW_TO_REACH_VALUES](#HOW_TO_REACH_VALUES)
* [ACCESSING_CELL_VALUES](#ACCESSING_CELL_VALUES)
* [CHANGE_CELL_VALUES](#CHANGE_CELL_VALUES)
* [CREATING_LISTING_CHANGING_SHEETS](#CREATING_LISTING_CHANGING_SHEETS)
* [CREATING_A_NEW_WORKBOOK](#CREATING_A_NEW_WORKBOOK)
* [ACCESSING_MULTIPLE_CELLS](#ACCESSING_MULTIPLE_CELLS)
* [GET_ALL_SHEETNAME](#GET_ALL_SHEETNAME)
* [HOW_MANY_ROWS_AND_COLUMNS](#HOW_MANY_ROWS_AND_COLUMNS)
* [HOW_TO_GET_THE_FULL_SHEET](#HOW_TO_GET_THE_FULL_SHEET)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### CREATING_WORKBOOK

```py
from openpyxl import Workbook
wb = Workbook()

#grab the active spreadsheet
ws = wb.active

#data can be assigned directly to cells
ws['A1'] = 333

#rows can also be appened
ws.append([1,2,3,4,5])

#save the worksheet
wb.save("temp_01.xlsx")

>>>
333				
1	2	3	4	5
>>>
```

[^^^](#OPENPYXL)

---

#### ACCESSING_WORKBOOK

```py
from openpyxl import Workbook, load_workbook

#how to load a workbook
wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws)

>>>
<Worksheet "Sheet1">
>>>
```

[^^^](#OPENPYXL)

---

#### HOW_TO_REACH_VALUES

##### OPTION_1

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('DIV_EX_21.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

data_a = sh1['A3'].value
data_b = sh1['B3'].value
data_d = sh1['D3'].value
data_e = sh1['E3'].value
data_f = sh1['F3'].value
data_g = sh1['G3'].value

data_x = wb['Champions']['A3'].value

print(sh1)
print(data_a)
print(data_b)
print(data_d)
print(data_e)
print(data_f)
print(data_g)
print(' ')

print(data_x)
print(' ')

print(wb.active.title)
print(sheets)

>>>
<Worksheet "Champions">
Symbol
Company
Sector
No Years
Price
Div Yield

Symbol

Sheet1
['Radar', 'Champions', 'Sheet1', 'Contenders', 'Challengers', 'All', 'Leaders', 'Additions', 'Cuts']
>>>
```

##### OPTION_2

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('DIV_EX_21.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

#option 1
print(wb['Champions']['A3'].value)

#option 2 (row,column)
print(sh1.cell(14,1).value)

#print(wb.active.title)
#print(sheets)

>>>
Symbol
ATR
>>>
```

##### OPTION_3

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('DIV_EX_21.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

#option 1
print(wb['Champions']['A3'].value)

#option 2 (row,column)
print(sh1.cell(14,1).value)

#option 3
print(sh1.cell(row=15,column=1).value)

#print(wb.active.title)
#print(sheets)

>>>
Symbol
ATR
AWR
>>>
```

[^^^](#OPENPYXL)

---

#### ACCESSING_CELL_VALUES

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active

print(ws['A1'])
print(ws['A1'].value)
print(ws['A2'].value)

>>>
<Cell 'Sheet1'.A1>
Name
Joe
>>>
```

[^^^](#OPENPYXL)

---

#### CHANGE_CELL_VALUES

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('Grades.xlsx')
ws = wb.active


print(ws['A2'].value)

>>>
Joe
>>>

ws['A2'].value = 'TEST'
wb.save('Grades.xlsx')
print(ws['A2'].value)

>>>
TEST
>>>
```

[^^^](#OPENPYXL)

---

#### CREATING_LISTING_CHANGING_SHEETS

```py
wb = load_workbook('Grades.xlsx')
print(wb.sheetnames)

>>>
['Sheet1', 'Sheet2', 'Sheet3', 'Sheet4']
>>>
```

```py
wb = load_workbook('Grades.xlsx')
wb.create_sheet('TTT')
print(wb.sheetnames)

>>>
['Sheet1', 'Sheet2', 'Sheet3', 'Sheet4', 'TTT']
>>>
```

[^^^](#OPENPYXL)

---

#### CREATING_A_NEW_WORKBOOK

```py
from openpyxl import Workbook, load_workbook

wb = Workbook()
ws = wb.active
ws.title = "Data"

ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['Tim', 'is', 'great', '!'])
ws.append(['end'])

wb.save('tim.xlsx')
```

[^^^](#OPENPYXL)

---

#### ACCESSING_MULTIPLE_CELLS

```py
from openpyxl import Workbook, load_workbook
from openpyxl.utils import get_column_letter

wb = load_workbook('tim.xlsx')
ws = wb.active

for row in range(1,11):
    for col in range(1,5):
        char = get_column_letter(col)
        print(ws[char + str(row)].value)

>>>
Tim
is
great
!
Tim
is
great
!
Tim
is
great
!
Tim
is
great
!
Tim
is
great
!
end
None
None
None
None
None
None
None
None
None
None
>>>        
```

[^^^](#OPENPYXL)

---

#### GET_ALL_SHEETNAME

```py
import openpyxl
workBook = load_workbook(filename='USDIV.xlsx')
sheets = workBook.sheetnames
i=1
for s_name in sheets:
    print(s_name)
    sheet=workBook[s_name]
    m_row=sheet.max_row
    m_col=sheet.max_column
    #print(m_row)
    #print(m_col)

>>>
Title
Champions
Contenders
Challengers
All CCC
Historical
WatchList
Changes
Summary
Revisions
Notes
>>>
```

[^^^](#OPENPYXL)

---

#### HOW_MANY_ROWS_AND_COLUMNS

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('DIV_EX_21.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

#how many rows and how many columns
row=sh1.max_row
column=sh1.max_column

print(row)
print(column)

>>>
132
40
>>>
```

[^^^](#OPENPYXL)

---

#### HOW_TO_GET_THE_FULL_SHEET

```py
from openpyxl import Workbook, load_workbook

wb = load_workbook('DIV_EX_21.xlsx')
sheets = wb.sheetnames

sh1 = wb['Champions']

#how many rows and how many columns
row=sh1.max_row
column=sh1.max_column

#reach the full sheet

for i in range (1,row+1)
    for j in range (1,column+1)
        print(sh1.cell(i,j).value)

>>>

>>>
```

[^^^](#OPENPYXL)

---

[^^^](#OPENPYXL)

---

[^^^](#OPENPYXL)

---
