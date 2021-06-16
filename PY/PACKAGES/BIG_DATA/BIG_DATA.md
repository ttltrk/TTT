
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [PY](https://github.com/ttltrk/TTT/blob/master/PY/PY.md)

---

### BIG_DATA

---

```

```

---

* [OVERVIEW](#OVERVIEW)
* [HADOOP](#HADOOP)
* [MAPREDUCE](#)
* [SPARK](#SPARK)
* [SPARK_RDD](#SPARK_RDD)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### OVERVIEW

local vs distributed

- a local process will use the computation resources of a single machine
- a distributed process has access to the computational resources across a number of machines connected
  through a network
- after a certain point, it is easier to scale out to many lower cpu machines, than to try to scale up to a
  single machine with a high cpu
- distributed machines also have the advantage of easily scaling, you can just add more machines
- they also include fault tolerance, if one machine fails, the whole network can still go on

[^^^](#BIG_DATA)

---

#### HADOOP

- Hadoop is a way to distribute very large files across multiple machnies
- it uses the hadoop Distributed File Systems (HDFS)
- HDFS allows a user to work with large data sets
- HDFS also duplicates blocks of data for fault tolerance
- it also then uses MapReduce
- MapReduce allows computations on that data
- HDFS will use blocks of data, with a size of 128 MB by default
- Each of these blocks is replicated 3 times
- The blocks are distributed in a way to support fault tolerance
- Smaller blocks provide more parallelization during processing
- Multiple copies of a block prevent loss of data to a failure of a node

[^^^](#BIG_DATA)

---

#### MAPREDUCE

- MapReduce is a way of splitting a computation task to a distributed set of files - such as HDFS
- It consists of a Job Tracker and multiple Task Trackers
- The Job Tracker sends code to run on the Task Trackers
- The Task trackers allocate CPU and memory for the tasks and monitor the tasks on the worker nodes

[^^^](#BIG_DATA)

---

#### SPARK

- Spark is one of the latest technologies being used to quickly and easily handle Big Data
- it is an open source project on Apache
- you can think of Spark as a flexible alternative to MapReduce
- Spark can use data stored in a variety of formats
  - Cassandra
  - AWS S3
  - HDFS
  - more
- Spark is faster than MapReduce
- MapReduce writes most data to disk after each map and reduce operation
- Spark keeps most of the data in memory after each transformation
- Spark can spill over to disk if the memory is filled

- RDD

- At the core of Spark is the idea of a Resilient Distributed Dataset (RDD)
- Resilient Distributed Dataset (RDD) has 4 main features:
  - Distributed Collection of DATA
  - Fault-tolerant
  - Parallel operation - partioned
  - Ability to use many data sources

```
RDD Objects >> DAGScheduler >> TaskScheduler >> Worker
```  

- RDDs are immutable, lazily evaluated, and cacheable
- there are two types of RDD operations:
  - Transformations
  - Actions

- Basic Actions:
    - First >> Return the first element in the RDD
    - Collect >> Return all the elements of the RDD as an array at the driver program
    - Count >> Return the number of elements in the RDD
    - Take >> Return an array with the first n elements of the RDD

- Basic Transformations:
      - Filter
      - Map
      - FlatMap

- RDD.filter()
        - Applies a function to each element and returns element that evaluate to true

- RDD.map()
        - Transforms each element and preserves # of elements, very similar idea to pandas .apply()

- RDD.flatMap()
          - Transforms each element into 0-N elements and changes # of elements

- Often RDDs will be holding their values in tuples
  - (key,value)
- This offers better partitioning of data and leads to functionality based on reduction

- Reduce() >> an action that will aggregate RDD elements using a function that returns a single element
- ReduceByKey() >> An action that will aggregate Pair RDD elements using a function that returns a Pair RDD

- these ideas are similar to a Group by operation

RDD Transformations and Actions

[^^^](#BIG_DATA)

---

#### SPARK_RDD

##### Important terms

```
- RDD - Resilient Distributed Dataset
- Transformation - Spark operation that produces an RDD
- Action - Spark operation that produces a local object
- Spark Job - Sequence of transformations on data with a final action
```

##### Creating RDD

there are two common ways to create an RDD:

```py
sc.parallelize(array) #create RDD of elements of array (or list)
sc.textFile(path/to/file) #create RDD of lines from file
```

##### RDD Transformations

We can use transformations to create a set of instructions we want to perform on the RDD.

```py
filter(lambda x: x % 2 == 0) #Discard non-even elements
map(lambda x: x * 2) #Multiply each RDD element by 2
map(lambda x: x.split()) #split each string into words
flatMap(lambda x: x.split()) #split each string into words and flatten sequence
sample(withReplacement=True,0.25) #create sample of 25% of elements with replacement
union(rdd) #Append rdd to existing RDD
distinct() #Remove duplicates in RDD
sortBy(lambda x: x, ascending=False) #Sort elements in descending order
```

##### RDD Actions

Once you have your recipe of transformations ready, what you will do next is execute them by calling actions.

```py
collect() #Convert RDD to in-memory list
take(3) #first 3 elements of RDD
top(3) #top 3 elements of RDD
takeSample(withReplacement=True,3) #create sample of 3 elements with replacement
sum() #find element sum (assumes numeric elements)
mean() #find element mean (assumes numeric elements)
stdev() #find element deviation (assumes numeric elements)
```



[^^^](#BIG_DATA)

---
