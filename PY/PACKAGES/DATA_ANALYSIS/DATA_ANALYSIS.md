
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATA_ANALYSIS

---

* [CC_LINK](https://courses.cognitiveclass.ai/courses/course-v1:CognitiveClass+DA0101EN+v1/course/)

---

* [MODULE_1](#MODULE_1)
* [MODULE_2](#MODULE_2)
* [MODULE_3](#MODULE_3)
* [MODULE_4](#MODULE_4)
* [MODULE_5](#MODULE_5)

---

#### MODULE_1

##### Introduction to Data Analysis with Python

Welcome to this module on Introduction to Data Analysis with Python.
In this module, you'll learn about an example around estimating used car prices that we
will analyze in this course, using Python.
Then we will introduce an overview of Python packages used for data analysis.
And finally, you will learn about how to import and export data in and from Python, and how
to obtain basic insights from the dataset on used cars and their prices.
So to learn how to analyze data in Python, we'll be answering the following question:
"Can we estimate the price of a used car based on its characteristics?"
To answer this question, we are going to use various Python packages to perform data cleaning,
exploratory data analysis, model development and model evaluation.

##### The Problem

In this video, we'll be talking about data analysis and the scenario in which we'll
be playing the data analyst or data scientist.
But before we begin talking about the problem (used car prices), we should first understand
the importance of data analysis.
As you know, data is collected everywhere around us, whether it's collected manually
by scientists, or collected digitally every time you click on a website or your mobile
device.
But data does not mean information.
Data analysis, and in essence, data science, helps us unlock the information and insights
from raw data, to answer our questions.
So data analysis plays an important role by helping us to discover useful information
from the data, answer questions, and even predict the future or the unknown.
So let's begin with our scenario.
Let's say we have a friend named Tom.
And Tom wants to sell his car.
But the problem is, he doesn't know how much he should sell his car for.
Tom wants to sell his car for as much as he can.
But he also wants to set the price reasonably so someone would want to purchase it.
So the price he sets should represent the value of the car.
How can we help Tom determine the best price for his car?
Let's think like data scientists and clearly define some of his problems:
For example, is there data on the prices of other cars and their characteristics?
What features of cars affect their prices?
Colour?
Brand?
Does horsepower also affect the selling price, or perhaps, something else?
As a data analyst or data scientist, these are some of the questions we can start thinking
about.
To answer these questions, we're going to need some data.
In the next videos, we'll be going into how to understand the data, how to import
it into Python, and how to begin looking into some basic insights from the data.

##### Understanding the Data

The dataset used in this course is an open dataset, by Jeffrey C. Schlimmer.
This dataset is in CSV format, which separates each of the values with commas, making it
very easy to import in most tools or applications.
Each line represents a row in the dataset.
In the hands-on lab for this module, you'll be able to download and use the CSV file.
Do you notice anything different about the first row?
Sometimes the first row is a header which contains a column name for each of the 26
columns.
But in this example, it's just another row of data.
So here's the documentation on what each of the 26 columns represent.
There are a lot of columns, and I'll just go through a few of the column names, but
you can also check out the link at the bottom of the slide to go through the descriptions
yourself.
The first attribute, "symboling", corresponds to the insurance risk level of a car.
Cars are initially assigned a risk factor symbol associated with their price.
Then, if an automobile is more risky, this symbol is adjusted by moving it up the scale.
A value of +3 indicates that the auto is risky, -3 that it is probably pretty safe.
The second attribute "normalized-losses" is the relative average loss payment per insured
vehicle year.
This value is normalized for all autos within a particular size classification (two-door
small, station wagons, sports/speciality, etc...), and represents the average loss per
car per year.
The values range from 65 to 256.
The other attributes are easy to understand.
If you would like to check out more details, refer to the link at the bottom of the slide.
Ok, after we understand the meaning of each feature, we'll notice that the 26th attribute
is "price".
This is our target value, or label, in other words.
This means "price" is the value that we want to predict from the dataset, and the
predictors should be all the other variables listed, like "symboling", "normalized-losses",
"make" and so on.
Thus, the goal of this project is to predict "price" in terms of other car features.
Just a quick note, this dataset is actually from 1985, so the car prices for the models
may seem a little low, but just bear in mind that the goal of this exercise is to learn
how to analyze the data.

##### Python Packages for Data Science

In order to do data analysis in Python, we should first tell you a little bit about the
main packages relevant to analysis in Python.
A Python library is a collection of functions and methods that allow you to perform lots
of actions without writing any code.
The libraries usually contain built-in modules providing different functionalities, which
you can use directly.

And there are extensive libraries, offering a broad range of facilities.
We have divided the Python data analysis libraries into three groups: The first group is called
"scientific computing libraries." Pandas offers data structure and tools for
effective data manipulation and analysis.
It provides fast access to structured data.
The primary instrument of Pandas is a two-dimensional table consisting of column and row labels,
which are called a DataFrame.
It is designed to provide easy indexing functionality.
The Numpy library uses arrays for its inputs and outputs.
It can be extended to objects for matrices, and with minor coding changes, developers
can perform fast array processing.
SciPy includes functions for some advanced math problems, as listed on this slide, as
well as data visualization.

Using data visualization methods is the best way to communicate with others, showing them
meaningful results of analysis.
These libraries enable you to create graphs, charts and maps.
The Matplotlib package is the most well-known library for data visualization.
It is great for making graphs and plots.
The graphs are also highly customizable.
Another high-level visualization library is Seaborn.
It is based on Matplotlib.
It's very easy to generate various plots such as heat maps, time series, and violin
plots.
With Machine Learning algorithms, we're able to develop a model using our dataset,
and obtain predictions.

The algorithmic libraries tackle some machine learning tasks from basic to complex.
Here we introduce two packages: The Scikit-learn library contains tools for
statistical modeling, including regression, classification, clustering and so on.
This library is built on NumPy, SciPy and Matplotlib.
StatsModels is also a Python module that allows users to explore data, estimate statistical
models, and perform statistical tests.

##### Importing and Exporting Data in Python

In this video, we’ll look at how to read in data using Python’s pandas package.
Once we have our data in Python, then we can perform all the subsequent data analysis procedures
we need.
Data acquisition is a process of loading and reading data into notebook from various sources.
To read any data using Python’s pandas package, there are two important factors to consider:
format and file path.
Format is the way data is encoded.
We can usually tell different encoding schemes by looking at the ending of the file name.
Some common encodings are csv, json, xlsx, hdf and so forth.
The (file) path tells us where the data is stored.
Usually it is stored either on the computer we are using, or online on the internet.
In our case, we found a dataset of used cars, which was obtained from the web address shown
on the slide.
When Jerry entered the web address in his web browser, he saw something like this.
Each row is one data point.
A large number of properties are associated with each data point.
Because the properties are separated from each other by commas, we can guess the data
format is csv, which stands for comma separated values.
At this point, these are just numbers and don’t mean much to humans, but once we read
in this data, we can try to make more sense out of it.
In pandas, the “read_csv()” method can read in files with columns separated by commas
into a pandas DataFrame.
Reading data in pandas can be done quickly in three lines.
First, import pandas.
Then define a variable with the file path.
And then use the read_csv method to import the data.
However, “read_csv” assumes that the data contains a header.
Our data on used cars has no column headers, so we need to specify “read_csv” to not
assign headers by setting header to “none”.
After reading the dataset, it is a good idea to look at the dataframe to get a better intuition
and to ensure that everything occurred the way you expected.
Since printing the entire dataset may take up too much time and resources, to save time,
we can just use dataframe.head() to show the first n rows of the data frame.
Similarly, dataframe.tail(n) shows the bottom n rows of data frame.
Here, we printed out the first 5 rows of data.
It seems that the dataset was read successfully!
We can see that pandas automatically set the column header as a list of integers, because
we set header=None when we read the data.
It is difficult to work with the dataframe without having meaningful column names, however,
we can assign column names in pandas.
In our present case, it turned out the we have the column names in a separate file online.
We first put the Column names in a list called headers.
Then, we set df.columns equals headers to replace the default integer headers by the
list.
If we use the head() method introduced in the last slide to check the dataset, we see
the correct headers inserted at the top of each column.
At some point in time after you’ve done operations on your dataframe, you may want
to export your pandas dataframe to a new CSV file.
You can do this using the method, ”to_csv()"
To do this, specify the file path (which includes the filename) that you want to write to.
For example, if you would like to save the dataframe "df" as "automobile.csv" to your
own computer, you can use the syntax: df.to_csv ("automobile.csv")
For this course, we will only read and save csv files.
However, pandas also supports importing and exporting of most data filetypes with different
dataset formats.
The code syntax for reading and saving other data formats is very similar to read or save
csv file.
Each column shows a different method to read and save files into a different format.

##### Getting Started Analyzing Data in Python

In this video, we introduce some simple pandas methods that all data scientists and analysts
should know when using Python pandas and data.
At this point, we assume that the data has been loaded.
It's time for us to explore the dataset.
Pandas has several built in methods that could be used to understand the datatype of
features or to look at the distribution of data within the dataset.
Using these methods gives an overview of the dataset.
And also point out potential issues, such as the wrong datatype of features, which may
need to be resolved later on.
Data has a variety of types.
The main types stored in Pandas objects are object, float, int, and datetime.
The datatype names are somewhat different from those in native Python.
This table shows the differences and similarities between them.
Some are very similar, such as the numeric datatypes "int" and "float".
The "object" pandas type functions similar to "string" in Python, save for the change
in name, while the "datetime" pandas type, is a very useful type for handling time series
data.
There are two reasons to check data types in a dataset.
Pandas automatically assigns types based on the encoding it detects from the original
data table.
For a number of reasons, this assignment may be incorrect.
For example, it should be awkward if the "car price" column, which we should expect to
contain continuous numeric numbers, is assigned the datatype of "object".
It would be more natural for it to have the float type.
Jerry may need to manually change the datatype to float.
The second reason is that it allows an experienced data scientist to see which Python functions
can be applied to a specific column.
For example, some math functions can only be applied to numerical data.
If these functions are applied to non-numerical data, an error may result.
When the "dtype" method is applied to the data set, the datatype of each column
is returned in a Series.
A good data scientist's intuition tells us that most of the data types make sense.
The make of cars, for example, are names,
so this information should be of type object.
The last one on the list could be an issue.
As "bore" is a dimension of an engine, we should expect a numerical data type to be used.
Instead, the object type is used.
In later sections, Jerry will have to correct these type mismatches.
Now we would like to check the statistical summary of each column to learn about the
distribution of data in each column.
The statistical metrics can tell the data scientist if there are mathematical issues
that may exist, such as extreme outliers and large deviations.
The data scientist may have to address these issues later.
To get the quick statistics, we use the describe method.
It returns the number of terms in the column as
"count", average column value as "mean",
column standard deviation as "std", the maximum and minimum values,
as well as the boundary of each of the quartiles.
By default, the dataframe.describe() function skips rows and columns that do not contain
numbers.
It is possible to make the describe method work for object-type columns as well.
To enable a summary of all the columns, we could add an argument include = "all" inside
the describe function bracket.
Now the outcome shows the summary of all the 26 columns, including object-typed attributes.
We see that for object-type columns, a different set of statistics is evaluated, like unique,
top and frequency.
"Unique" is the number of distinct objects in the column, "top" is the most frequently
occurring object, and "freq" is the number of times the top object appears in the column.
Some values in the table are shown here as "NaN", which stands for "not a number".
This is because that particular statistical metric cannot be calculated for that specific
column data type.
Another method you can use to check your dataset is the dataframe.info function.
This function shows the top 30 rows and bottom 30 rows of the dataframe.

[^^^](#DATA_ANALYSIS)

---

#### MODULE_2

##### Pre-processing Data in Python

In this video, we’ll be going through some data pre-processing techniques.
If you’re unfamiliar with the term, data pre-processing is a necessary step in data
analysis.
It is the process of converting or mapping data from one “raw” form into another
format to make it ready for further analysis.
Data pre-processing is also often called “data cleaning” or “data wrangling”, and there
are likely other terms.
Here are the topics that we’ll be covering in this module:
First, we’ll show you how to identify and handle missing values.
A “missing value” condition occurs whenever a data entry is left empty.
Then, we’ll cover data formats.
Data from different sources may be in various formats, in different units or in various
conventions.
We will introduce some methods in Python pandas that can standardize the values into the same
format, or unit, or convention.
After that, we’ll cover data normalization.
Different columns of numerical data may have very different ranges, and direct comparison
is often not meaningful.
Normalization is a way to bring all data into a similar range, for more useful comparison.
Specifically, we’ll focus on the techniques of centering and scaling.
And then, we’ll introduce data binning.
Binning creates bigger categories from a set of numerical values.
It is particularly useful for comparison between groups of data.
And lastly, we’ll talk about categorical variables and show you how to convert categorical
values into numeric variables to make statistical modeling easier.
In Python, we usually perform operations along columns; each row of the column represents
a sample, i.e., a different used car in the database.
You access a column by specifying the name of the column.
For example, you can access "symbolling” and “body-style”; each of these columns
is a pandas series.
There are many ways to manipulate dataframes in Python.
For example, you can add a value to each entry of a column.
To add 1 to each “symbolling” entry, use this command.
This changes each value of the dataframe column by adding 1 to the current value.

##### Dealing with Missing Values in Python

In this video, we will introduce the pervasive problem of missing values, as well as strategies
on what to do when you encounter missing values in your data.
When no data value is stored for a feature for a particular observation, we say this
feature has a “missing value”.
Usually, missing value in dataset appears as “?”, “N/A”, 0 or just a blank cell.
In the example here, the “normalized-losses” feature has a missing value which is
represented with NaN.
But how can you deal with missing data?
There are many ways to deal with missing values, and this is regardless of Python, R, or whatever
tool you use.
Of course, each situation is different and should be judged differently.
However, these are the typical options you can consider:
• The first is to check if the person or group that collected the data can go back
and find what the actual value should be.
Another possibility is just to remove the data where that missing value is found.
• When you drop data, you can either drop the whole variable or just the single data
entry with the missing value.
If you don’t have a lot of observations with missing data, usually dropping the particular
entry is the best.
If you’re removing data, you want to look to do something that has the least amount
of impact.
Replacing data is better, since no data is wasted.
However, it is less accurate since we need to replace missing data with a guess of what
the data should be.
One standard replacement technique is to replace missing values by the average value of the
entire variable.
As an example, suppose we have some entries that have missing values for the ‘normalized-losses’
column, and the column average for entries with data is 4,500.
While there is no way for us to get an accurate guess of what the missing values under the
‘normalized-losses’ column should have been, you can approximate their values using
the average value of the column, 4,500.
But what if the values cannot be averaged, as with categorical variables?
For a variable like ‘fuel-type’, there isn’t an “average” fuel type, since
the variable values are not numbers.
In this case, one possibility is to try using the mode –the most common, like “gasoline”.
Finally, sometimes we may find another way to guess the missing data.
This is usually because the data gatherer knows something additional about the missing
data.
For example, he may know that the missing values tend to be old cars, and the normalized
losses of old cars are significantly higher than the average vehicle.
And of course, finally, in some cases, you may simply want to leave the missing data
as missing data.
For one reason or another, it may be useful to keep that observation, even if some features
are missing.
Now let’s go into how to drop missing values or replace missing values in Python.
To remove data that contains missing values, pandas library has a built-in method called
‘dropna’.
Essentially, with the dropna method, you can choose to drop rows or columns that contain
missing values, like NaN.
So you’ll need to specify “axis=0” to drop the rows, or “axis=1” to drop the
columns that contain the missing values.
In this example, there is a missing value in the “price” column.
Since the price of used cars is what we’re trying to predict in our upcoming analysis,
we’d have to remove the cars –the rows– that don’t have a listed price.
It can simply be done in one line of code using dataframe.dropna().
Setting the argument “inplace” to “true” allows the modification to be done on the
dataset directly.
“Inplace=True” just writes the result back into the dataframe.
This is equivalent to this line of code.
Don’t forget that this line of code does not change the dataframe, but is a good way
to make sure that you are performing the correct operation.
To modify the dataframe, you have to set the parameter "inplace" equal to true.
You should always check the documentation if you are not familiar with a function or
method.
The pandas webpage has lots of useful resources.
To replace missing values like NaNs with actual values, pandas library has a built in method
called ‘replace’, which can be used to fill in the missing values with the newly
calculated values.
As an example, assume that we want to replace the missing values of the variable ‘normalized-losses’
by the mean value of the variable.
Therefore, the missing value should be replaced by the average of the entries within that
Column.
In Python, first we calculate the mean of the column.
Then we use the method “replace”, to specify the value we would like to be replaced as
the first parameter, in this case, NaN.
The second parameter is the value we would like to replace it with: i.e., the mean, in
this example.
This is a fairly simplified way of replacing missing values.
There are of course other techniques, such as replacing missing values for the average
of the group, instead of the entire dataset.
So we’ve gone through two ways in Python to deal with missing data.
We learned to drop problematic rows or columns containing missing values.
And then we learned how to replace missing values with other values.
But don’t forget the other ways to deal with missing data: you can always check for
a higher quality dataset or source.
Or, in some cases, you may want to leave the missing data as missing data.

##### Data Formatting in Python

In this video, we’ll look at the problem of data with different formats, units, and
conventions, and the pandas methods that help us deal with these issues.
Data is usually collected from different places, by different people, which may be stored in
different formats.
Data formatting means bringing data into a common standard of expression that allows
users to make meaningful comparisons.
As a part of dataset cleaning, data formatting ensures that data is consistent and easily
understandable.
For example, people may use different expressions to represent New York City, such as N.Y., Ny,
NY, and New York.
Sometimes, this “uncleaned” data is a good thing to see.
For example, if you’re looking at the different ways people tend to write “New York”,
then this is exactly the data that you want.
Or if you’re looking for ways to spot fraud, perhaps writing “N dot Y dot” is more
likely to predict an anomaly than if someone wrote out “New York” in full.
But perhaps, more often than not, we just simply want to treat them all as the same entity,
or format, to make statistical analyses easier down the road.
Referring to our used car dataset, there’s a feature named “city-mpg” in the dataset,
which refers to a car fuel consumption in miles per gallon unit.
However, you may be someone who lives in a country that uses metric units.
So you would want to convert those values to L/100km --the metric version.
To transform mpg to L/100km we need to divide 235 by each value in the city-mpg column.
In Python, this can easily be done in one line of code.
You take the column and set it equal to 235 divided by the entire column.
In the second line of code, rename column name from "city-mpg" to "city-L/100km" using
the dataframe.rename() method.
For a number of reasons, including when you import a dataset into Python, the data type
may be incorrectly established.
For example, here we notice that the assigned data type to the price feature is “object”
although the expected data type should really be an integer or float type.
It is important for later analysis to explore the feature’s data type and convert them
to the correct data types; otherwise, the developed models later on may behave strangely,
and totally valid data may end up being treated like missing data.
There are many data types in pandas.
Objects can be letters or words.
Int64 are integers.
And Floats are real numbers.
There are many others that we will not discuss.
To identify a features data type, in Python we can use the dataframe.dtypes() method and
check the datatype of each variable in a dataframe.
In the case of wrong datatypes, the method dataframe.astype() can be used to convert
a datatype from one format to another.
For example, using astype(“int”) for the price column, you can convert the object column
into an integer type variable.

##### Data Normalization in Python

In this video, we’ll be talking about data normalization, an important technique to understand
in data pre-processing.
When we take a look at the used car data set, we notice in the data that the feature “length”
ranges from 150 to 250, while feature “width” and “height” ranges from 50 to 100.
We may want to normalize these variables so that the range of the values is consistent.
This normalization can make some statistical analyses easier down the road.
By making the ranges consistent between variables, normalization enables a fairer comparison
between the different features.
Making sure they have the same impact, it is also important for computational reasons.
Here is another example that will help you understand why normalization is important.
Consider a dataset containing two features: “age” and “income”, where “age”
ranges from 0 to 100, while “income” ranges from 0 to 20,000 and higher.
“income” is about 1,000 times larger than “age”, and ranges from 20,000 to 500,000.
So these two features are in very different ranges.
When we do further analysis, like linear regression, for example, the attribute “income” will
intrinsically influence the result more, due to its larger value, but this doesn’t necessarily
mean it is more ‘important’ as a predictor.
So, the nature of the data biases the linear regression model to weigh income more heavily
than age.
To avoid this, we can normalize these two variables into values that range from 0 to 1.
Compare the two tables at the right.
After normalization, both variables now have a similar influence on the models we will
build later.
There are several ways to normalize data.
I will just outline three techniques.
The first method, called “simple feature scaling”, just divides each value by the
maximum value for that feature.
This makes the new values range between 0 and 1.
The second method, called “Min-Max”, takes each value, X_old, subtracted from the minimum
value of that feature, then divides by the range of that feature.
Again, the resulting new values range between 0 and 1.
The third method is called “z-score” or “standard score”.
In this formula, for each value, you subtract the Mu which is the average of the feature,
and then divide by the standard deviation (sigma).
The resulting values hover around 0, and typically range between -3 and +3, but can be higher
or lower.
Following our earlier example, we can apply the normalization method on the “length”
feature.
First, we use the simple feature scaling method, where we divide it by the maximum value in
the feature.
Using the pandas method “max”, this can be done in just one line of code.
Here’s the Min-max method on the “length” feature.
We subtract each value by the minimum of that column, then divide it by the range of that
column: the max minus the min.
Finally we apply the Z-score method on length feature to normalize the values.
Here, we apply the mean() and std() method on the length feature.
mean() method will return the average value of the feature in the dataset, and std() method
will return the standard deviation of the features in the dataset.

##### Binning in Python

[^^^](#DATA_ANALYSIS)

---

#### MODULE_3

[^^^](#DATA_ANALYSIS)

---

#### MODULE_4

[^^^](#DATA_ANALYSIS)

---

#### MODULE_5

[^^^](#DATA_ANALYSIS)

---
