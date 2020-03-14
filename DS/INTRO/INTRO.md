
---

### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [DS](https://github.com/ttltrk/TTT/blob/master/DS/DS.md)

---

### INTRO

---

* [SHORTENINGS](#SHORTENINGS)
* [DS_CLIENTS](#DS_CLIENTS)
* [DS_ENGINES](#DS_ENGINES)
* [DS_JOBS](#DS_JOBS)
* [DESIGN_OF_PJOBS](#DESIGN_OF_PJOBS)
* [CONFIG_FILE](#CONFIG_FILE)

---

#### SHORTENINGS

```
Information Server (IS)
WebSphere Application Server (WAS)
```

[^^^](#INTRO)

---

#### DS_CLIENTS

```
  - Administrator:
    Configures DataStage projects and specifies DataStage user roles.

  - Designer:
    Creates DataStage jobs that are compiled into executable programs.

  - Director:
    Used to run and monitor the DataStage jobs, although this can also be done in Designer
```

[^^^](#INTRO)

---

#### DS_ENGINES

```
  - Parallel engine:
    Runs parallel jobs

  - Server engine:
    Runs server jobs, Runs job sequences
```

[^^^](#INTRO)

---

#### DS_JOBS

```
- Parallel jobs
  Executed by the DataStage parallel engine
  Built-in capability for pipeline and partition parallelism
  Compiled into OSH
    Executable script viewable in Designer and the log

- Server jobs
  Executed by the DataStage Server engine
  Use a different set of stages than parallel jobs
  No built-in capability for partition parallelism
  Runtime monitoring in the job log

- Job sequences (batch jobs, controlling jobs)
  A server job that runs and controls jobs and other activities
  Can run both parallel jobs and other job sequences
  Provides a common interface to the set of jobs it controls
```

[^^^](#INTRO)

---

#### DESIGN_OF_PJOBS

```
- Stages

    Passive stages (E and L of ETL)
      Read data
      Write data
      Examples: Sequential File, DB2, Oracle, Peek stages

    Processor (active) stages (T of ETL)
      Transform data (Transformer stage)
      Filter data (Transformer stage)
      Aggregate data (Aggregator stage)
      Generate data (Row Generator stage)
      Merge data (Join, Lookup stages)

- Links
  "Pipes” through which the data moves from stage-to-stage
```

[^^^](#INTRO)

---

#### CONFIG_FILE

```
- Determines the degree of parallelism (number of partitions) of jobs
  that use it

- Every job runs under a configure file

- Each DataStage project has a default configuration file
    Specified by the $APT_CONFIG_FILE job parameter
    Individual jobs can run under different configuration files than the project default
      The same job can also run using different configuration files on different job runs

The configuration file is specified by the $APT_CONFIG_FILE environment variable.
This environment variable can be added to the job as a job parameter.
This allows the job to use different configuration files on different job runs.
```

[^^^](#INTRO)

---
