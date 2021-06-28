
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md) - [PACKAGES](https://github.com/ttltrk/TTT/blob/master/PY/PACKAGES/PACKAGES.md)

---

### MATPLOTLIB

---

Matplotlib is a library used to create graphs, charts, and figures. It also provides functions to customize your figures by changing the colors, labels, etc.

To start using matplotlib, we first need to import it

```py
import matplotlib.pyplot as plt
```

pyplot is the module we will be using to create our plots.
plt is a common name used for importing this module.

---

* [BASICS](#BASICS)
* [LINE_PLOT](#LINE_PLOT)
* [BAR_PLOT](#BAR_PLOT)
* [BOX_PLOT](#BOX_PLOT)
* [HISTOGRAM](#HISTOGRAM)
* [AREA_PLOT](#AREA_PLOT)
* [](#)

---

#### BASICS

Matplotlib works really well with Pandas!
To demonstrate the power of matplotlib, let's create a chart from dummy data.
We will create a pandas Series with some numbers and use it to create our chart:

```py
import matplotlib.pyplot as plt
import pandas as pd

s = pd.Series([18, 42, 9, 32, 81, 64, 3])
s.plot(kind='bar')
plt.savefig('plot.png')
```

The ```plot()``` function is used to create a plot from the data in a Pandas Series or DataFrame.

The data from the series is using the Y axis, while the index is plotted on the X axis.
As we have not provided a custom index for our data, the default numeric index is used.

[^^^](#MATPLOTLIB)

---

#### LINE_PLOT

Matplotlib supports the creation of different chart types.
Let's start with the most basic one -- a line chart.
We will use the COVID-19 data from the previous module to create our charts.

Let's show the number of cases in the month of December.
To create a line chart we simply need to call the plot() function on our DataFrame, which contains the corresponding data:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df['month']==12]['cases'].plot()
plt.savefig('plot.png')
```

We can also include multiple lines in our chart.

For example, let's also include the deaths column in our DataFrame:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

(df[df['month']==12])[['cases', 'deaths']].plot()
plt.savefig('plot.png')
```

[^^^](#MATPLOTLIB)

---

#### BAR_PLOT

The plot() function can take a kind argument, specifying the type of the plot we want to produce.

For bar plots, provide kind="bar".
Let's make a bar plot for the monthly infection cases:


```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

(df.groupby('month')['cases'].sum()).plot(kind="bar")
plt.savefig('plot.png')
```

We can also plot multiple columns.
The stacked property can be used to specify if the bars should be stacked on top of each other.

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df = df.groupby('month')[['cases', 'deaths']].sum()
df.plot(kind="bar", stacked=True)
plt.savefig('plot.png')
```

kind="barh" can be used to create a horizontal bar chart.

[^^^](#MATPLOTLIB)

---

#### BOX_PLOT

A box plot is used to visualize the distribution of values in a column, basically visualizing the result of the describe() function.

For example, let's create a box plot for the cases in June:

```py
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("https://www.sololearn.com/uploads/ca-covid.csv")
df.drop('state', axis=1, inplace=True)
df['date'] = pd.to_datetime(df['date'], format="%d.%m.%y")
df['month'] = df['date'].dt.month
df.set_index('date', inplace=True)

df[df["month"]==6]["cases"].plot(kind="box")
plt.savefig('plot.png')
```

The green line shows the median value.
The box shows the upper and lower quartiles (25% of the data is greater or less than these values).
The circles show the outliers, while the black lines show the min/max values excluding the outliers.

[^^^](#MATPLOTLIB)

---

#### HISTOGRAM

Similar to box plots, histograms show the distribution of data.
Visually histograms are similar to bar charts, however, histograms display frequencies for a group of data rather than an individual data point; therefore, no spaces are present between the bars.

Typically, a histogram groups data into chunks (or bins).

```py
df[df["month"]==6]["cases"].plot(kind="hist")
```

The histogram grouped the data into 9 bins and shows their frequency. You can see that, for example, only single data points are greater than 6000.

```py
plot(kind="hist", bins = 10)
```

[^^^](#MATPLOTLIB)

---

#### AREA_PLOT

```py

```

[^^^](#MATPLOTLIB)

---
