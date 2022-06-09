
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### SPARK

---

* [INTRO_TO_SPARK](#INTRO_TO_SPARK)
* [](#)
* [](#)
* [](#)

---

* []()
* []()
* []()
* []()
* []()

---

#### LINKS

* [PYSPARK_TUTORIAL](https://www.youtube.com/watch?v=_C8kWso4ne4&t=1780s)
* [SPARK_FUN_1](https://courses.cognitiveclass.ai/courses/course-v1:BigDataUniversity+BD0211EN+v1/courseware/50e2f47dec3341ab984fb0505c202b99/7f3e68eea7e7416e9481ec7e69f212b4/?child=first)

---

#### INTRO_TO_SPARK

- Part 1

Objectives: After completing this lesson, you should be
able to explain the purpose of Spark and understand why and when you would use Spark. You should
be able to list and describe the components of the Spark unified stack. You will be able
to understand the basics of the Resilient Distributed Dataset, Spark's primary data abstraction.
Then you will see how to download and install Spark standalone to test it out yourself.
You will get an overview of Scala and Python to prepare for using the two Spark shells.
There is an explosion of data. No matter where
you look, data is everywhere. You get data from social media such as Twitter feeds, Facebook
posts, SMS, and a variety of others. The need to be able to process those data as quickly
as possible becomes more important than ever. How can you find out what your customers want
and be able to offer it to them right away? You do not want to wait hours for a batch
job to complete. You need to have it in minutes or less.
MapReduce has been useful, but the amount of time it takes for the jobs to run is no
longer acceptable in most situations. The learning curve to writing a MapReduce job
is also difficult as it takes specific programming knowledge and the know-how. Also, MapReduce
jobs only work for a specific set of use cases. You need something that works for a wider
set of use cases.
Apache Spark was designed as a computing platform to be fast, general-purpose, and easy to use.
It extends the MapReduce model and takes it to a whole other level.
The speed comes from the in-memory computations. Applications running in memory allows for
a much faster processing and response. Spark is even faster than MapReduce for complex
applications on disks.
This generality covers a wide range of workloads under one system. You can run batch application
such as MapReduce types jobs or iterative algorithms that builds upon each other. You
can also run interactive queries and process streaming data with your application. In a
later slide, you'll see that there are a number of libraries which you can easily use
to expand beyond the basic Spark capabilities.
The ease of use with Spark enables you to quickly pick it up using simple APIs for Scala,
Python and Java. As mentioned, there are additional libraries which you can use for SQL, machine
learning, streaming, and graph processing. Spark runs on Hadoop clusters such as Hadoop
YARN or Apache Mesos, or even as a standalone with its own scheduler.
You may be asking, why would I want to use
Spark and what would I use it for? As you know, Spark is related to MapReduce in a sense
that it expands on its capabilities.
Like MapReduce, Spark provides parallel distributed processing, fault tolerance on commodity hardware,
scalability, etc. Spark adds to the concept with aggressively cached in-memory distributed
computing, low latency, high level APIs and stack of high level tools described on the
next slide. This saves time and money.
There are two groups that we can consider here who would want to use Spark: Data Scientists
and Engineers. You may ask, but aren't they similar? In a sense, yes, they do have overlapping
skill sets, but for our purpose, we'll define data scientist as those who need to analyze
and model the data to obtain insight. They would have techniques to transform the data
into something they can use for data analysis. They will use Spark for its ad-hoc analysis
to run interactive queries that will give them results immediately. Data scientists
may also have experience using SQL, statistics, machine learning and some programming, usually
in Python, MatLab or R. Once the data scientists have obtained insights on the data and later
someone determines that there's a need develop a production data processing application,
a web application, or some system to act upon the insight, the person called upon to work
on it would be the engineers.
Engineers would use Spark's programming API to develop a system that implement business
use cases. Spark parallelize these applications across the clusters while hiding the complexities
of distributed systems programming and fault tolerance. Engineers can use Spark to monitor,
inspect and tune applications.
For everyone else, Spark is easy to use with a wide range of functionality. The product
is mature and reliable.

- Part 2

Here we have a picture of the Spark unified
stack. As you can see, the Spark core is at the center of it all. The Spark core is a
general-purpose system providing scheduling, distributing, and monitoring of the applications
across a cluster. Then you have the components on top of the core that are designed to interoperate
closely, letting the users combine them, just like they would any libraries in a software
project. The benefit of such a stack is that all the higher layer components will inherit
the improvements made at the lower layers. Example: Optimization to the Spark Core will
speed up the SQL, the streaming, the machine learning and the graph processing libraries
as well. The Spark core is designed to scale up from one to thousands of nodes. It can
run over a variety of cluster managers including Hadoop YARN and Apache Mesos. Or simply, it
can even run as a standalone with its own built-in scheduler.
Spark SQL is designed to work with the Spark via SQL and HiveQL (a Hive variant of SQL).
Spark SQL allows developers to intermix SQL with Spark's programming language supported
by Python, Scala, and Java.
Spark Streaming provides processing of live streams of data. The Spark Streaming API closely
matches that of the Sparks Core's API, making it easy for developers to move between applications
that processes data stored in memory vs arriving in real-time. It also provides the same degree
of fault tolerance, throughput, and scalability that the Spark Core provides.
Machine learning, MLlib is the machine learning library that provides multiple types of machine
learning algorithms. All of these algorithms are designed to scale out across the cluster
as well.
GraphX is a graph processing library with APIs to manipulate graphs and performing graph-parallel
computations.
Here's a brief history of Spark. I'm not
going to spend too much time on this as you can easily find more information for yourself
if you are interested. Basically, you can see that MapReduce started out over a decade
ago. MapReduce was designed as a fault tolerant framework that ran on commodity systems. Spark
comes out about a decade later with the similar framework to run data processing on commodity
systems also using a fault tolerant framework. MapReduce started off as a general batch processing
system, but there are two major limitations. 1) Difficulty in programming directly in MR
and 2) Batch jobs do not fit many use cases. So this spawned specialized systems to handle
other use cases. When you try to combine these third party systems in your applications,
there are a lot of overhead.
Taking a looking at the code size of some applications on the graph on this slide, you
can see that Spark requires a considerable amount less. Even with Spark's libraries,
it only adds a small amount of code due to how tightly everything is integrated with
very little overhead. There is great value to be able to express a wide variety of use
cases with few lines of code.
Now let's get into the core of Spark. Spark's
primary core abstraction is called Resilient Distributed Dataset or RDD. Essentially it
is just a distributed collection of elements that is parallelized across the cluster. You
can have two types of RDD operations. Transformations and Actions. Transformations are those that
do not return a value. In fact, nothing is evaluated during the definition of these transformation
statements. Spark just creates these Direct Acyclic Graphs or DAG, which will only be
evaluated at runtime. We call this lazy evaluation.
The fault tolerance aspect of RDDs allows Spark to reconstruct the transformations used
to build the lineage to get back the lost data.
Actions are when the transformations get evaluted along with the action that is called for that
RDD. Actions return values. For example, you can do a count on a RDD, to get the number
of elements within and that value is returned.
So you have an image of a base RDD shown here on the slide. The first step is loading the
dataset from Hadoop. Then uou apply successive transformations on it such as filter, map,
or reduce. Nothing actually happens until an action is called. The DAG is just updated
each time until an action is called. This provides fault tolerance. For example, let's
say a node goes offline. All it needs to do when it comes back online is to re-evaluate
the graph to where it left off.
Caching is provided with Spark to enable the processing to happen in memory. If it does
not fit in memory, it will spill to disk.

[^^^](#SPARK)

---

[^^^](#SPARK)

---

####

- setup config

```py
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
!wget -q http://archive.apache.org/dist/spark/spark-3.1.1/spark-3.1.1-bin-hadoop3.2.tgz
!tar xf spark-3.1.1-bin-hadoop3.2.tgz
!pip install -q findspark
```

```py
import os
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-8-openjdk-amd64"
os.environ["SPARK_HOME"] = "/content/spark-3.1.1-bin-hadoop3.2"
```

```py
import findspark
findspark.init()
from pyspark.sql import SparkSession
spark = SparkSession.builder.master("local[*]").getOrCreate()
spark.conf.set("spark.sql.repl.eagerEval.enabled", True) # Property used to format output tables better
spark
```

```py
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('Practise').getOrCreate()
spark
```

[^^^](#SPARK)

---

####

```py
# read the uploaded file
df_pyspark=spark.read.csv('test.csv')
df_pyspark
```

```py
df_pyspark.show()
```

```py
#read with header
spark.read.option('header', 'true').csv('test.csv')
```

```py
spark.read.option('header', 'true').csv('test.csv').show()
```

```py
# check the datatype of dataset
df_pyspark = spark.read.option('header', 'true').csv('test.csv')
type(df_pyspark)
```

```py
df_pyspark.head(3)
```

```py
df_pyspark.printSchema()
```

[^^^](#SPARK)

---

[^^^](#SPARK)

---

[^^^](#SPARK)

---
