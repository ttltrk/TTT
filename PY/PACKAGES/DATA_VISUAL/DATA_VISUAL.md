
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


#####

#####

#####

#####

#####

#####

#### MODULE_2

#### MODULE_3

#### MODULE_4

#### MODULE_5
