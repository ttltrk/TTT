
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
* [](#)
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

[^^^](#BIG_DATA)

---
