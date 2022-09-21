
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### DATA_VISUALIZATION

---

* [CC_LINK](https://courses.cognitiveclass.ai/courses/course-v1:CognitiveClass+DV0101EN+v2/course/)

---

* [MODULE_1](#MODULE_1)
* [MODULE_2](#MODULE_2)
* [MODULE_3](#MODULE_3)
* [MODULE_4](#MODULE_4)
* [MODULE_5](#MODULE_5)

---

#### MODULE_1

##### Introduction to Data Visualization

Hello everyone and welcome to the first module of the data visualization with
Python course. In this video, we're gonna introduce data visualization and go over
an example of transforming a given visual into one which is more effective
attractive and impactive. So let's get started. Now one might ask, "Why would I
need to learn how to visualize data?" Well, data visualization is a way to show a
complex data in a form that is graphical and easy to understand. This can be
especially useful when one is trying to explore the data and getting acquainted
with it. Also since a picture is worth a thousand words, then plots and graphs can
be very effective in conveying a clear description of the data especially when
disclosing findings to an audience or sharing the data with other peer data
scientists. Also, they can be very valuable when it comes to supporting any
recommendations you make to clients managers or other decision-makers in
your field. Darkhorse Analytics is a company that spun out of a research lab
at the University of Alberta in 2008 and has done fascinating work on data
visualization. Darkhorse Analytics specializes in quantitative consulting
in several areas including data visualization and geospatial analysis.
Their approach when creating a visual revolves around three key points: less is
more effective, it is more attractive, and it is more impactive. In other words, any
feature or design you incorporate in your plot to make it more attractive or
pleasing should support the message that the plot is meant to get across and not
distract from it. Let's take a look at an example. So here is a pie chart of what
looks like people's preferences when it comes to different types of pig meat. The
charts message is almost half of the people surveyed preferred bacon over the
other types of pig meat. But I'm sure that almost all of you agree that there
is a lot going on in this pie chart and we're not even sure it features such as
the blue background or 3D orientation are meant to convey
anything. In fact, these additional unnecessary features distract from the
main message and can be confusing to the audience. So let's apply Darkhorse
Analytics approach to transform this into a visual that's more effective,
attractive, and impactive. As I mentioned earlier, the message here is that people
are most likely to choose bacon over other types of pig meat, so let's get rid
of everything that can be distracting from this core message. The first thing
is let's get rid of the blue background and the gray background. Let's also get
rid of borders as they do not convey any extra information. Also let's drop the
redundant legend since the pie chart is already color coded. 3D isn't adding any
extra information so let's say bye to it. Text bolding is also unnecessary and
let's get rid of the different colors and the wedges. Wow! What just happened?
Well let's thicken the lines to make them more meaningful. Now this looks a
little familiar. Yes! This is a bar graph after all, one with horizontal bars. And
finally, let's emphasize bacon so that it stands out among the other types of pig
meat. Now let's juxtapose the pie chart and the bar graph and compare which is
better and easy to understand. I hope that we unanimously agree that the bar
graph is the better of the two. It is simple, cleaner, less distracting, and much
easier to read. In fact, pie charts have recently come under fire from data
visualization experts who argue that they are relevant only in the rarest of
circumstances. Bar graphs and charts on the other hand are argued to be far
superior ways to quickly get a message across. But don't worry about this for
now, we will come back to this point when we learn how to create pie charts and
bar graphs with Matplotlib. For more similar and interesting
examples, check out Darkhorse Analytics website. They have a couple more examples
on how to clean bar graphs and maps of geospatial data. All these examples
reinforce the concept of less is more effective, attractive, and impactive.

##### Introduction to Matplotlib

In this video, we will start learning about Matplotlib. This video will focus
on the history of Matplotlib and its architecture. Matplotlib is one of the
most widely used, if not the most popular data visualization library in Python. It
was created by John Hunter, who was a neurobiologist and was part of a
research team that was working on analyzing Electrocorticography
signals, ECoG for short. The team was using a proprietary software for the
analysis. However they had only one license and were taking turns in using
it. So in order to overcome this limitation, John set out to replace the
proprietary software with a MATLAB based version that could be utilized by him
and his teammates, and that could be extended by multiple investigators. As a
result, Matplotlib was originally developed as an ECoG visualization tool,
and just like MATLAB, Matplotlib was equipped with a scripting interface for
quick and easy generation of graphics, represented by pyplot. We will learn
more about this in a moment. Now Matplotlib's architecture is composed of
three main layers: the back-end layer, the artist layer where much of the heavy
lifting happens and is usually the appropriate programming paradigm when
writing a web application server, or a UI application, or perhaps a script to be shared with other developers, and the scripting layer, which is the appropriate
layer for everyday purposes and is considered a lighter scripting interface
to simplify common tasks and for a quick and easy generation of graphics and
plots. Now let's go into each layer in a little more details.
So the back-end layer has three built-in abstract interface classes: FigureCanvas,
which defines and encompasses the area on which the figure is drawn. Renderer, an
instance of the renderer class knows how to draw on the figure canvas. And finally,
Event, which handles user inputs such as keyboard strokes and
mouse clicks. Moving on to the artist layer. It is composed of one main object,
which is the Artist. The Artist is the object that knows how to take the
Renderer and use it to put ink on the canvas. Everything you see on a Matplotlib
figure is an Artist instance. The title, the lines, the tick labels, the
images, and so on, all correspond to an individual Artist. There are two types of
Artist objects. The first type is the primitive type, such as a line, a
rectangle, a circle, or text. And the second type is the composite type, such
as the figure or the axes. The top-level Matplotlib object that contains and
manages all of the elements in a given graphic is the figure Artist, and the
most important composite artist is the axes because it is where most of the
Matplotlib API plotting methods are defined, including methods to create and
manipulate the ticks, the axis lines, the grid or the plot background. Now it
is important to note that each composite artist may contain other composite
artists as well as primitive artists. So a figure artist for example would
contain an axis artist as well as a rectangle or text artists. Now let's put
the artist layer to use and see how we can use it to generate a graphic. So
let's try to generate a histogram of 10,000 random numbers using the artist
layer. First we import the figure canvas from the backend backend underscore agg
and attach the figure artist to it. Note that agg stands for anti-grain geometry
which is a high-performance library that produces attractive images. Then we
import the Numpy library to generate the random numbers. Next we create an axes
artist. The axes artist is added automatically to the figure axes
container, Fig.axes. And note here that (111)
is from the MATLAB convention so it creates a grid with one row and
one column and uses the first cell in that grid for the location of the new
axes. Then we call the axes method hist, to generate the histogram.
hist creates a sequence of rectangle artists for each histogram bar and adds
them to the axes container. Here 100 means create 100 bins. Finally we
decorate the figure with a title and we save it. Now this is the generated
histogram and so this is how we use the artist layer to generate a graphic. As
for the scripting layer, it was developed for scientists who are not professional
programmers and I'm sure you agree with me based on the histogram that we just
created that the artist layer is syntactically heavy as it is meant for
developers and not for individuals whose goal is to perform quick exploratory
analysis of some data. Matplotlib's scripting layer is essentially the
Matplotlib.pyplot interface, which automates the process of defining a
canvas and defining a figure artist instance and connecting them. So
let's see how the same code that we used earlier using the artist layer to
generate a histogram of 10,000 random numbers would now look like. So first we
import the pyplot interface and you can see how all the methods associated
with creating the histogram and other artist objects and manipulating them
whether it is the hist method or showing the figure are part of the pyplot
interface. If you're interested in learning more about the history of
Matplotlib and its architecture, this link will take you to a chapter written
by the creators of Matplotlib themselves. It is definitely a recommended read.

##### Basic Plotting with Matplotlib

In this video, we will learn how to use Matplotlib to create plots and we will
do so using the Jupyter notebook as our environment.
Now Matplotlib is a well-established data visualization library that is well
supported in different environments such as in Python scripts, in the iPython
shell, web application servers, in graphical user interface toolkits as
well as the Jupyter notebook. Now for those of you who don't know what the
Jupyter notebook is, it's an open source web application that allows you to
create and share documents that contain live code visualizations and some
explanatory text as well. Jupyter has some specialized support for Matplotlib
and so if you start a Jupyter notebook, all you have to do is import Matplotlib
and you're ready to go. In this course, we will be working mostly with the
scripting interface. In other words, we will learn how to create almost all of
the visualization tools using the scripting interface. As we proceed in the
course, you will appreciate the power of this interface when you find out that
you can literally create almost all of the conventional visualization tools
such as histograms, bar charts, box plots and many others using one function only:
the plot function. Let's start with an example. Let's first import the scripting
interface as plt and let's plot a circular mark at the position (5, 5), so x
equals 5 and y equals 5. Notice how the plot was generated within the browser
and not in a separate window for example. If the plot gets generated in a new
window then you can enforce generating plots within the browser using what's
called a magic function. a magic function starts with % Matplotlib, and to enforce
plots to be rendered within the browser, you pass in inline as the backend.
Matplotlib has a number of different backends available. One limitation of
this backend is that you cannot modify a figure once
it's rendered. So after rendering the above figure, there is no way for us to
add, for example, a figure title or label its axes. You will need to generate a
new plot and add a title and the axes labels before calling the show
function. A backend that overcomes this limitation is the notebook backend.
With the notebook backend in place, if a plt function is called, it checks if an
active figure exists, and any functions you call will be applied to this active
figure. If a figure does not exist, it renders a new figure. So when we call the
plt.plot function to plot a circular mark at position (5, 5), the backend checks
if an active figure exists since there isn't an active figure it generates a
figure and adds a circular mark to position (5, 5). And what is beautiful about
this back end is that now we can easily add a title for example or labels to the
axes after the plot was rendered, without the need to regenerate the figure.
Finally, another thing that is great about Matplotlib is that pandas also has
a built-in implementation of it. Therefore, plotting in pandas is as simple as
calling the plot function on a given pandas series or dataframe. So, say we
have a data frame of the number of immigrants from India and China to
Canada from 1980 to 1996 and say we're interested in generating a line plot of
these data. All we have to do is call the plot function on this dataframe which
we called India_China_df and set the parameter kind
to line and there you have it: a line plot of the data in the data frame.
Plotting a histogram of the data is not any different. So say we would like to
plot a histogram of the India column in our dataframe. All we have to do is call
the plot function on that column and set the parameter kind to hist, for histogram.
And there you have it. A histogram of the number of Indian immigrants
to Canada from 1980 to 1996. This concludes our video on basic plotting
with Matplotlib. See you in the next video.

##### Dataset on Immigration to Canada

In this video, we will learn more about the dataset that we will be using
throughout the course. The population division of the United Nations compiled
immigration data pertaining to 45 countries. The data consist of the total
number of immigrants from all over the world to each of the 45 countries as
well as other metadata pertaining to the immigrants countries of origin. In this
course, we will focus on immigration to Canada and we will work primarily with
the data set involving immigration to the Great White North. Here is a snapshot
of the UN data on immigration to Canada in the form of an excel file. As you can
see, the first twenty rows contain textual data about the UN Department and other
irrelevant information. Row 21 contains the labels of the columns. Following that
each row represents a country and contains metadata about the country such
as what continent it resides in, what region it belongs to, and whether the
region is developing or developed. Each row also contains the total number of
immigrants from that country for the years 1980 all the way to 2013.
Throughout this course, we will be using pandas for any analysis of the data
before creating any visualizations. So in order to start creating different types
of plots of the data whether for exploratory analysis or for presentation,
we will need to import the data into a pandas dataframe. To do that, we will
need to import the pandas library as well as the xlrd library, which is
required to extract data from Excel spreadsheet files. Then we call the
pandas function read_excel to read the data into a pandas dataframe.
And let's name this dataframe df_can. Notice how we're skipping
the first twenty rows to read only the data corresponding to each country. If you
want to confirm that you have imported your data correctly, in pandas, you can
always use the head function to display the first five rows of the dataframe. So,
if we call this function on our dataframe, df_can, here is the
output. As you can see, the output of the head function looks correct with the
columns having the correct labels and each row representing a country and
containing the total number of immigrants from that country. This
concludes our video on the immigration to Canada dataset. I will see you in the
next video.

##### Line Plots

In this video, things will start getting more exciting. We will generate our first
visualization tool: the line plot. So what is a line plot? As its name suggests, it
is a plot in the form of a series of data points connected by straight line
segments. It is one of the most basic type of chart and is common in many
fields not just data science. The more important question is when to use line
plots. The best use case for a line plot is when you have a continuous dataset
and you're interested in visualizing the data over a period of time. As an
example, say we're interested in the trend of immigrants from Haiti to Canada.
We can generate a line plot and the resulting figure will depict the trend
of Haitian immigrants to Canada from 1980 to 2013. Based on this line plot, we
can then research for justifications of obvious anomalies or changes. So in this
example, we see that there is a spike of immigration from Haiti to Canada in 2010.
A quick Google search for major events in Haiti in 2010 would return the tragic
earthquake that took place in 2010, and therefore this influx of immigration to
Canada was mainly due to that tragic earthquake. Okay now how can we generate
this line plot? Before we go over the code to do that, let's do a quick recap
of our dataset. Each row represents a country and contains metadata about the
country such as where it is located geographically, and whether it is
developing or developed. Each row also contains numerical figures of annual
immigration from that country to Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make querying specific countries easier. Also let's add
an extra column which represents the cumulative sum of annual immigration from
each country from 1980 to 2013. So for Afghanistan, it is 58,639,
total, and for Albania it is 15,699,
and so on. And let's name our dataframe df_canada. So now
that we know how our data is stored in the dataframe, df_canada,
let's generate the line plot corresponding to immigration from Haiti.
First, we import Matplotlib as mpl and its scripting interface as plt. Then,
we call the plot function on the row corresponding to Haiti and we set kind
equals line to generate a line plot. Note that we used years which is a list
containing string format of years from 1980 to 2013 in order to exclude the
column of total immigration that we added. Then to complete the figure, we
give it a title and we label its axes. Finally we call the show function to
display the figure. Note that this is the code to generate the line plot using the
magic function % matplotlib with the inline backend. And there you have it: a
line plot that depicts immigration from Haiti to Canada from 1980 to 2013.
In the lab session, we explore line plots in more details so make sure to
complete this module's lab session. This concludes our video on line plots. I'll
see you in the next video.

[^^^](#DATA_VISUALIZATION)

---

#### MODULE_2

##### Area Plots

In this video, we will learn about another visualization tool: the area plot,
which is actually an extension of the line plot that we learned about in an
earlier video. So what is an area plot? An area plot also known as an area chart or
graph is a type of plot that depicts accumulated totals using numbers or
percentages over time. It is based on the line plot and is commonly used when
trying to compare two or more quantities. So how can we generate an area plot with
Matplotlib? Before we go over the code to do that, let's do a quick recap of our
dataset. Recall that each row represents a country and contains metadata about
the country such as where it is located geographically and whether it is
developing or developed. Each row also contains numerical figures of annual
immigration from that country to Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also, let's add an extra column which represents the cumulative
sum of annual immigration from each country from 1980 to 2013. So for
Afghanistan, it is 58,639, total, and for Albania, it is 15,699 and so
on, and let's name our data frame df_canada. So now that we know
how our data is stored in the dataframe, df_canada, let's try to
generate area plots for the countries with the highest number of immigration
to Canada. We can try to find these countries by sorting our dataframe in
descending order of cumulative total immigration from 1980 to 2013. We use the
sort_values function to sort our dataframe in descending order and
here is the result. So it turns out that India followed by China then the UK, Philippines,
and Pakistan are the top five countries with the highest number of
immigration to Canada. So can we now go ahead and generate the area plots using
the first five rows of this dataframe? Not quite yet. First we need to create a
new dataframe of only these five countries and we need to exclude the
total column. More importantly, to generate the area plots for these
countries, we need the years to be plotted on the horizontal axis and the
annual immigration to be plotted on the vertical axis.
Note that Matplotlib plots the indices of a dataframe on the horizontal axis,
and with the dataframe as shown, the countries will be plotted on the
horizontal axis. So to fix this, we need to take the transpose of the dataframe.
Let's see how we can do this. After we sort our dataframe in descending order
of cumulative annual immigration, we create a new dataframe of the top five
countries and let's call it df_top5. We then select only
the columns representing the years 1980 to 2013 in order to exclude the total
column before applying the transpose method. The resulting dataframe is
exactly what we want, with five columns where each column represents one of the
top five countries and the years being the indices. Now we can go ahead and call
the plot function on dataframe df_top5 to generate the area
plots. To do that, first we import Matplotlib as mpl and its
scripting interface as plt. Then we call the plot function on the dataframe df_top5
and we set kind equals area to generate an area plot.
Then to complete the figure we give it a title and we label its axes. Finally we
call the show function to display the figure. Note that here we're generating
the area plot using the inline backend. And there you have it: an area plot that
depicts the immigration trend of the five countries with
the highest immigration to Canada from 1980 to 2013. In the lab session, we
explore area plots in more details, so make sure to complete this module's lab
session. And with this, we conclude our video on area plots. I'll see you in the
next video.

##### Histograms

In this video, we will learn about another visualization tool: the histogram,
and we will learn how to create it using Matplotlib. Let's start by defining what
a histogram is. A histogram is a way of representing the frequency distribution
of a numeric dataset. The way it works is it partitions the spread of the
numeric data into bins, assigns each datapoint in the dataset to a bin, and then
counts the number of datapoints that have been assigned to each bin. So the
vertical axis is actually the frequency or the number of datapoints in each bin.
For example, let's say the range of the numeric values in the dataset is 34,129.
Now, the first step in creating the histogram is partitioning
the horizontal axis in, say, ten bins of equal width and then we construct the
histogram by counting how many datapoints have a value that is between the
limits of the first bin, the second bin, the third bin, and so on. Say the number
of datapoints having a value between 0 and 3,413 is 175, then we draw a bar of
that height for this bin. We repeat the same thing for all the other bins, and if
no datapoints fall into a bin then that bin would have a bar of height 0. So how
do we create a histogram using Matplotlib. Before we go over the code to
do that, let's do a quick recap of our dataset.
Recall that each row represents a country and contains metadata about the
country such as where it is located geographically and whether it is
developing or developed. Each row also contains numerical figures of annual
immigration from that country to Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also let's add an extra column which
represents the cumulative sum of annual immigration from each country from 1980
to 2013. So for Afghanistan for example, it is 58,639,
total, and for Albania it is 15,699,
and so on. And let's name our dataframe df_canada.
So now that we know how our data is stored in the dataframe df_canada,
say we're interested in visualizing the distribution of
immigrants to Canada in the year 2013. The simplest way to do that is to
generate a histogram of the data in column 2013 and let's see how we can do
that with Matplotlib. First, we import Matplotlib as mpl and its scripting
interface as plt. Then we call the plot function on the data in column 2013 and
we set kind equals hist to generate a histogram. Then to complete the figure, we
give it a title and we label its axes. Finally, we call the show function to
display the figure. And there you have it. A histogram that depicts the
distribution of immigration to Canada in 2013 but notice how the bins are not
aligned with the tick marks on the horizontal axis. This can make the
histogram hard to read. So let's try to fix this in order to make our histogram
more effective. One way to solve this issue is to borrow the histogram
function from the Numpy library. So as usual we start by importing
Matplotlib and its scripting interface, but this time we also import the Numpy
library. Then we call the Numpy histogram function on the data in column 2013. What
this function is gonna do is it is going to partition the spread of the data in
column 2013 into 10 bins of equal width, compute the number of datapoints that
fall in each bin, and then return this frequency of each bin which we're
calling count here and the bin edges which we're calling bin_edges.
We then pass these bin edges as an additional parameter in our plot
function to generate the histogram. And there you go a nice looking histogram
whose bin edges are aligned with the tick marks on the horizontal axis. In the
lab session we explore histograms in more details, so make sure to complete
this module's lab session. And with this we conclude our video on histograms.
I'll see you in the next video.

##### Bar Charts

In this video, we will learn about an additional visualization tool, namely the
bar chart, and learn how to create it using Matplotlib. A bar chart is a very
popular visualization tool. Unlike a histogram, a bar chart also known as a
bar graph is a type of plot where the length of each bar is proportional to
the value of the item that it represents. It is commonly used to compare the
values of a variable at a given point in time. For example, say we're interested in
visualizing in a discrete fashion how immigration from Iceland to Canada
looked like from 1980 to 2013. One way to do that is by building a bar chart where
the height of the bar represents the total immigration from Iceland to Canada
in a particular year. So how do we do that with Matplotlib. Before we go over
the code to do that, let's do a quick recap of our dataset. Recall that each
row represents a country and contains metadata about the country such as where
it is located geographically and whether it is developing or developed. Each row
also contains numerical figures of annual immigration from that country to
Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also let's add an extra column which represents the cumulative
sum of annual immigration from each country from 1980 to 2013.
So for Afghanistan for example, it is 58,639, total, and for Albania it is
15,699 and so on. And let's name our dataframe, df_canada. So now
that we know how our data is stored in the dataframe, df_canada,
let's see how we can use Matplotlib to generate a bar chart to visualize how
immigration from Iceland to Canada looked like from
1980 to 2013. As usual, we start by importing Matplotlib and its scripting interface.
Then we use the years variable to create a new dataframe; let's name it
df_iceland, which includes the data pertaining to annual immigration
from Iceland to Canada and excluding the total column. Then we call the plot
function on df_iceland and we set kind equals bar to generate a bar
chart. Then to complete the figure we give it a title and we label its axes.
Finally, we call the show function to display the figure. And there you have it.
A bar chart that depicts the immigration from Iceland to Canada from 1980 to 2013.
By examining the bar chart we notice that immigration to Canada from Iceland
has seen an increasing trend since 2010. I'm sure that the curious among you are
already wondering who the culprit behind this increasing trend is. In the lab
session, we reveal the reason and we also learn how to create a bar chart
with horizontal bars, so make sure to complete this module's lab session. And
with this, we conclude our video on bar charts. I'll see you in the next video.

[^^^](#DATA_VISUALIZATION)

---

#### MODULE_3

##### Pie Charts

In this video, we will learn about another visualization tool: the pie chart,
and we will learn how to create it using Matplotlib.
So what is a pie chart? A pie chart is a circular statistical graphic divided
into slices to illustrate numerical proportion. For example, here is a pie
chart of the Canadian federal election back in 2015 were the Liberals in red
won more than 50% of the seats in the House of Commons. That is why the red
color occupies more than half of the circle. So how do we create a pie chart
with Matplotlib? Before we go over the code to do that, let's do a quick recap
of our dataset. Recall that each row represents a country and contains
metadata about the country such as where it is located geographically and whether
it is developing or developed. Each row also contains numerical figures of
annual immigration from that country to Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also let's add an extra column which represents the cumulative
sum of annual immigration from each country from 1980 to 2013. So for
Afghanistan for example, it is 58,639, total, and for Albania, it is
15,699 and so on. And let's name our dataframe df_canada. So now
that we know how our data is stored in the dataframe df_canada, say
we're interested in visualizing a breakdown of immigration to Canada
continent wise. The first step is to group our data by
continent using the continent column and we use pandas for this. We call the
pandas groupby function on df_canada and we sum the number
of immigrants from the countries that belong to the
same continent. Here is the resulting dataframe, and let's name it
df_continents. The resulting dataframe has six rows, each
representing a continent and 35 columns representing the years from 1980 to 2013
plus the cumulative sum of immigration for each continent. And now we're ready
to start creating our pie chart. We start with the usual, importing Matplotlib as
mpl and its scripting layer the pyplot interface as plt. Then we call the
plot function on column total of the dataframe df_continents and
we set kind equals pie to generate a pie chart. Then to complete the figure we
give it a title. Finally we call the show function to
display the figure. And there you have it. A pie chart that depicts each continent's
proportion of immigration to Canada from 1980 to 2013. In the lab session, we will
go through the process of creating a very professional-looking and
aesthetically pleasing pie chart and transform the pie chart that we just
created into one that looks like this. So make sure to complete this module's lab
session. One last comment on pie charts. There are some very vocal opponents to
the use of pie charts under any circumstances. Most argue that pie charts
fail to accurately display data with any consistency. Bar charts are much
better when it comes to representing the data in a consistent way and getting the
message across. If you're interested in learning more about the arguments
against pie charts, here is a link to a very interesting article that discusses
very clearly the flaws of pie charts. You can also find the link under the video.
And with this we conclude our video on pie charts. I'll see you in the next
video.

##### Box Plots

In this video, we will learn about another visualization tool: the box plot,
and we will learn how to create a using Matplotlib. So what is a box plot? A box
plot is a way of statistically representing the distribution of given
data through five main dimensions. The first dimension is minimum, which is the
smallest number in the sorted data. The second dimension is first quartile, which
is the point 25% of the way through the sorted data. In other words, a
quarter of the datapoints are less than this value. The third dimension is median,
which is the median of the sorted data. The fourth dimension is third quartile,
which is the point 75% of the way through the sorted data. In other words,
three-quarters of the data points are less than this value. And the final
dimension is maximum, which is the highest number in the sorted data. Now
let's see how we can create a box plot with Matplotlib. Before we go over the
code to do that, let's do a quick recap of our dataset. Recall that each row
represents a country and contains metadata about the country such as where
it is located geographically and whether it is developing or developed. Each row
also contains numerical figures of annual immigration from that country to
Canada from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also let's add an extra column which represents the cumulative
sum of annual immigration from each country from 1980 to 2013. So for
Afghanistan for example, it is 58,639, total, and for Albania, it is
15,699 and so on. And let's name our data frame df_canada. So now
that we know how our data is stored in the dataframe, df_canada,
say we're interested in creating a box plot to visualize
immigration from Japan to Canada. As with the other tools that we learned so far,
we start by importing Matplotlib as mpl and the pyplot interface as plt. Then we
create a new dataframe of the data pertaining to Japan and we're excluding
the column total using the years variable. Then we transpose the resulting
dataframe to make it in the correct format to create the box plot. Let's name
this new dataframe df_japan. Following that we call the plot function
on df_japan and we set kind equals box to generate a box plot. Then
to complete the figure we give it a title and we label the vertical axis.
Finally we call the show function to display the figure. And there you have it.
A box plot that provides a pleasing distribution of Japanese immigration to
Canada from 1980 to 2013. In the lab session, we explore box plots in more
details and learn how to create multiple box plots as well as horizontal box
plots, so make sure to complete this module's lab session. And with this we
conclude our video on box plots. I'll see you in the next video.

##### Scatter Plots

In this video, we will learn about an additional visualization tool: the
scatter plot, and we will learn how to create it using Matplotlib. So what is a
scatter plot? A scatter plot is a type of plot that displays values pertaining to
typically two variables against each other. Usually it is a dependent variable
to be plotted against an independent variable in order to determine if any
correlation between the two variables exists. For example, here is a scatter
plot of income versus education and by looking at the plotted data one can
conclude that an individual with more years of education is likely to earn a
higher income than an individual with fewer years of education. So how can we
create a scatterplot with Matplotlib? Before we go over the code to do that,
let's do a quick recap of our dataset. Recall that each row represents a
country and contains metadata about the country such as where it is located
geographically and whether it is developing or developed. Each row also
contains numerical figures of annual immigration from that country to Canada
from 1980 to 2013.
Now let's process the dataframe so that the country name becomes the index of
each row. This should make retrieving rows pertaining to specific countries a
lot easier. Also let's add an extra column which represents the cumulative
sum of annual immigration from each country from 1980 to 2013. So for
Afghanistan for example, it is 58,639, total, and for Albania it is
15,699 and so on. And let's name our dataframe df_canada. So now
that we know how our data is stored in the dataframe, df_canada, say
were interested in plotting a scatter plot of the total annual immigration to
Canada from 1980 to 2013. To be able to do that,
we first need to create a new dataframe that shows each year and the
corresponding total number of immigration from all the countries worldwide as
shown here. Let's name this new dataframe, df_total. In the lab
session, we will walk together through the process of creating df_total
from df_canada, so make sure to complete this module's lab
session. Then we proceed as usual. We import Matplotlib as mpl and its
scripting layer, the pyplot interface, as plt. Then we call the plot function on
the data frame df_total and we set kind equals scatter to generate a
scatter plot. Now unlike the other data visualization
tools were only passing the kind parameter was enough to generate the
plot, with scatter plots we also need to pass the variable to be plotted on the
horizontal axis as the x-parameter and the variable to be plotted on the
vertical axis as the y-parameter. In this case, we're passing column year as the
x-parameter and column total as the y-parameter. Then to complete the figure we
give it a title and we label its axes. Finally, we call the show function to
display the figure. And there you have it. A scatter plot that shows total
immigration to Canada from countries all over the world from 1980 to 2013. The
scatter plot clearly depicts an overall rising trend of immigration with time. In
the lab session we explore scatter plots in more details and learn about a very
interesting variation of this scatter plot, a plot called the bubble plot, and
we learn how to create it using Matplotlib. So make sure to complete this
module's lab session. And with this, we conclude our video on scatter plots. I'll
see you in the next video.

[^^^](#DATA_VISUALIZATION)

---

#### MODULE_4

##### Waffle Charts

In this video, we will learn about what some consider an advanced visualization
tool, namely the waffle chart. So what is a waffle chart? A waffle chart is a great
way to visualize data in relation to a whole or to highlight progress against a
given threshold. For example, say immigration from Scandinavia to Canada
is comprised only of immigration from Denmark, Norway, and Sweden, and we're
interested in visualizing the contribution of each of these countries
to the Scandinavian immigration to Canada. The main idea here is for a given
waffle chart whose desired height and width are defined, the contribution of
each country is transformed into a number of tiles that is proportional to
the country's contribution to the total, so that more the contribution the more
the tiles, resulting in what resembles a waffle when combined. Hence the name
waffle chart. Unfortunately Matplotlib does not have a built-in function to
create waffle charts. Therefore, in the lab session, I'll walk you through the
process of creating your own Python function to create a waffle chart, so
it's really important that you complete this module's lab session. And with this,
we conclude our video on waffle charts. I'll see you in the next video.

##### Word Clouds

In this video, we will learn about another advanced visualization tool: the
word cloud. So what is a word cloud? A word cloud is simply a depiction of the
importance of different words in the body of text. A word cloud works in a
simple way; the more a specific word appears in a source of textual data the
bigger and bolder it appears in the world cloud. So given some text data on
recruitment, for example, we generate a cloud of words like this. This cloud is
telling us that words such as recruitment, talent, candidates, and so on,
are the words that really stand out in these text documents. And assuming that
we didn't know anything about the content of these documents, a word cloud
can be very useful to assign a topic to some unknown textual data. Unfortunately,
just like waffle charts, Matplotlib does not have a built-in function to generate
word clouds. However, luckily a Python library for cloud word generation that
was created by Andreas Mueller is publicly available. So, in the lab session
we will learn how to use Mueller's word cloud generator and we will also create
interesting word clouds superimposed on different background images. So make sure
to complete this modules lab session. And with this, we conclude our video on word
clouds. I'll see you in the next video.

##### Seaborn and Regression Plots

In this video, we will learn about a new visualization library in Python, which is
Seaborn. Although Seaborn is another data
visualization library, it is actually based on Matplotlib.
It was built primarily to provide a high-level interface for drawing
attractive statistical graphics, such as regression plots, box plots, and so on.
Seaborn makes creating plots very efficient. Therefore with Seaborn you
can generate plots with code that is 5 times less than with Matplotlib. Let's
see how we can use Seaborn to create a statistical graphic. Let's look into
regression plots. Let's say we have a dataframe called df_total of
total immigration to Canada from 1980 to 2013 with the year in one column and the
corresponding total immigration in another column, and say we're interested
in creating a scatter plot along with a regression line to highlight any trends
in the data. With Seaborn, you can do all this with literally one line of code. The
way to do this, we first import Seaborn and let's import it as sns. Then, we call
the Seaborn regplot function. We basically tell it to use the dataframe
df_total and to plot the column year on the horizontal axis and
the column total on the vertical axis. And the output of this one line of code
is a scatter plot with a regression line and not just that, but also 95%
confidence interval. Isn't that really amazing? Seaborn's regplot function
also accepts additional parameters for any personal customization. So you can
change the color for example using the color parameter. Let's go ahead and
change the color to green. Also, you can change the marker shape as well using
the marker parameter. Let's go ahead and change the shape of our markers to a +
marker instead of the default circular marker. In the lab session, we
explore regression plots with Seaborn in more details, so
make sure to complete this module's lab session. And with this we conclude our
short introduction to Seaborn and regression plots. I'll see you in the
next video.

[^^^](#DATA_VISUALIZATION)

---

#### MODULE_5

##### Introduction to Folium

In this video, we will learn about a very interesting data visualization library
in Python which is Folium. Folium is a powerful data visualization library in
Python that was built primarily to help people visualize geospatial data. With
Folium, you can create a map of any location in the world as long as you
know its latitude and longitude values. You can also create a map and
superimpose markers as well as clusters of markers on top of the map for cool
and very interesting visualizations. You can also create maps of different styles
such as street level map, stamen map and, a couple others which we will look
into in just a moment. Creating a world map with Folium is pretty
straightforward. You simply call the map function and that is all. What is really
interesting about the maps created by Folium is that they are interactive, so
you can zoom in and out after the map is rendered, which is a super useful feature.
The default map style is the open street map, which shows a street view of an area
when you're zoomed in and shows the borders of the world countries when
you're zoomed all the way out. Now let's create a world map centred around
Canada. To do that, we pass in the latitude and the longitude values of
Canada using the location parameter and with Folium you can set the initial zoom
level using the zoom start parameter. Now I say initial because you can easily
change the zoom level after the map is rendered by zooming in or zooming out.
You can play with this parameter to figure out what the initial zoom level
looks like for different values. Now, let's set the zoom level for our map of
Canada to 4. And there you go. Here is a world map centred around Canada.
Another amazing feature of Folium is that you can create different map styles
using the tiles parameter. Let's create a stamen toner map of Canada. This
style is great for visualizing and exploring river meanders
and coastal zones. Another style is stamen terrain. Let's create a map of
Canada in stamen terrain. This style is great for visualizing hill shading and
natural vegetation colors. And with this we conclude our introduction to Folium.
I'll see you in the next video.

```py
#generate map
canada_map = folium.Map(
    location=[55.555, -100.200],
    zoom_start=4
)
```

##### Maps with Markers

In this video, we will continue working with the Folium library and learn how
to superimpose markers on top of a map for interesting visualizations. In the
previous video, we learned how to create a world map centred around Canada, so
let's create this map again and name it canada_map this time. Ontario
is a Canadian province and contains about 40 percent of the Canadian
population. It is considered Canada's most populous province. Let's see how we
can add a circular mark to the centre of Ontario. To do that, we need to create
what is called a feature group. Let's go ahead and create a feature group named
ontario. Now when a feature group is created, it is empty and that means
what's next is to start creating what is called children and adding them to the
feature group. So let's create a child in the form of a red circular mark located
at the centre of the Ontario province. We specify the location of the child by
passing in its latitude and longitude values. And once we're done adding
children to the feature group we add the featured group to the map. And there you
have it. A red circular mark superimposed on top of the map and added to the
centre of the province of Ontario. Now it would be nice if we could actually label
this marker in order to let other people know what it actually represents. To do
that, we simply use the marker function and the pop up parameter to pass in
whatever text we want to add to this marker. And there you go. Now our marker
displays Ontario when clicked on. In the lab session, we will look into a
real-world example and explore crime rate in San Francisco. We will create a
map of San Francisco and superimpose thousands of these markers on top of the
map. Not just that but I'll show you how you can also create clusters of markers
in order to make your map look less congested. This module's lab session is a
very interesting one so please make sure to complete it.
And with this, we conclude our video on adding markers to maps with Folium. I'll
see you in the next video.

```py
#generate map
canada_map = folium.Map(
    location=[55.555, -100.200],
    zoom_start=4
)

#create a feature group
ontario = folium.map.FeatureGroup()

#style the feature group
ontario.add.child(
    folium.feature.CircleMarker(
    [50.50, 60.60] radius = 5,
    color = "red", fill_color = "Red"
    )
)
```

#####

#####

#####

#####

[^^^](#DATA_VISUALIZATION)

---
