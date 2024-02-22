
---

### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### DataStage

---

* [INTRO](https://github.com/ttltrk/TTT/blob/master/DS/INTRO/INTRO.md)
* [DEPLOYMENT](https://github.com/ttltrk/TTT/blob/master/DS/DEPLOYMENT/DEPLOYMENT.md)
* [DATASTAGE_ADMINISTRATION](https://github.com/ttltrk/TTT/blob/master/DS/DATASTAGE_ADMINISTRATION/DATASTAGE_ADMINISTRATION.md)
* [METADATA](https://github.com/ttltrk/TTT/blob/master/DS/METADATA/METADATA.md)
* [PARALLEL_JOBS](https://github.com/ttltrk/TTT/blob/master/DS/PARALLEL_JOBS/PARALLEL_JOBS.md)
* [SEQUENTIAL_DATA](https://github.com/ttltrk/TTT/blob/master/DS/SEQUENTIAL_DATA/SEQUENTIAL_DATA.md)
* [PARTITIONING_AND_COLLECTING_ALGORITHMS](https://github.com/ttltrk/TTT/blob/master/DS/PARTITIONING_AND_COLLECTING_ALGORITHMS/PARTITIONING_AND_COLLECTING_ALGORITHMS.md)
* [COMBINE_DATA](https://github.com/ttltrk/TTT/blob/master/DS/COMBINE_DATA/COMBINE_DATA.md)
* [GROUP_PROCESSING_STAGES](https://github.com/ttltrk/TTT/blob/master/DS/GROUP_PROCESSING_STAGES/GROUP_PROCESSING_STAGES.md)
* [TRANSFORMER_STAGE](https://github.com/ttltrk/TTT/blob/master/DS/TRANSFORMER_STAGE/TRANSFORMER_STAGE.md)
* [REPOSITORY_FUNCTIONS](https://github.com/ttltrk/TTT/blob/master/DS/REPOSITORY_FUNCTIONS/REPOSITORY_FUNCTIONS.md)
* [RELATIONAL_DATA](https://github.com/ttltrk/TTT/blob/master/DS/RELATIONAL_DATA/RELATIONAL_DATA.md)
* [JOB_CONTROL](https://github.com/ttltrk/TTT/blob/master/DS/JOB_CONTROL/JOB_CONTROL.md)

---

Use the stage on the Processing section of the palette to manipulate data that you have read from a data source before writing it to a data target.

#### Transformer stage

The Transformer stage is a processing stage. It appears under the processing category in the tool palette.

#### BASIC Transformer stage

The BASIC Transformer stage is a processing stage that appears under the processing category in the tool palette in the Transformer shortcut container. It gives access to BASIC transforms and functions.

#### Aggregator stage
The Aggregator stage is a processing stage. It classifies data rows from a single input link into groups and computes totals or other aggregate functions for each group. The aggregator stage gives you access to grouping and summary operations.

#### Join stage

The Join stage is a processing stage that performs join operations on two or more data sets input to the stage and then outputs the resulting data set.

#### Merge Stage

The Merge stage is a processing stage. It can have any number of input links, a single output link, and the same number of reject links as there are update input links. The Merge stage combines a master data set with one or more update data sets.

#### Lookup Stage

The Lookup stage is a processing stage that is used to perform lookup operations on a data set read into memory from any other Parallel job stage that can output data. The most common use for a lookup is to map short codes in the input data set onto expanded information from a lookup table which is then joined to the incoming data and output.

#### Sort stage

The Sort stage is a processing stage that is used to perform more complex sort operations than can be provided for on the Input page Partitioning tab of parallel job stage editors.

#### Funnel Stage

The Funnel stage is a processing stage that copies multiple input data sets to a single output data set. You can use this operation for combining separate data sets into a single large data set.

#### Remove Duplicates Stage

The Remove Duplicates stage is a processing stage. It can have a single input link and a single output link.

#### Compress stage

The Compress stage is a processing stage. This stage uses the UNIX compress or GZIP utility to compress a data set.

#### Expand Stage

The Expand stage is a processing stage that converts a previously compressed data set back into a sequence of records from a stream of raw binary data.

#### Copy stage

The Copy stage is a processing stage. The Copy stage copies a single input data set to a number of output data sets. Some SMP systems allow scalability of disk I/O.

#### Modify stage

The Modify stage alters the record schema of its input data set. The modified data set is then output. You can drop or keep columns from the schema, or change the type of a column.

#### Filter Stage

The Filter stage is a processing stage. This stage transfers, unmodified, the records of the input data set which satisfy the specified requirements and filters out all other records.

#### External Filter stage

The External Filter stage is a processing stage that allows you to specify a UNIX command that acts as a filter on the data you are processing.

#### Change Capture stage

The Change Capture stage is a processing stage that compares two data sets and makes a record of the differences.

#### Change Apply stage

The Change Apply stage is a processing stage. It takes the change data set, that contains the changes in the before and after data sets, from the Change Capture stage and applies the encoded change operations to a before data set to compute an after data set.

#### Difference stage

The Difference stage is a processing stage. It performs a record-by-record comparison of two input data sets, which are different versions of the same data set designated the before and after data sets.

#### Compare stage

The Compare stage is a processing stage. This stage performs a column-by-column comparison of records in two presorted input data sets.

#### Encode Stage

The Encode stage is a processing stage. It encodes a data set using a UNIX encoding command, such as gzip, that you supply.
../topics/c_deeref_Decode_Stage.html

#### Switch stage

The Switch stage is a processing stage that takes a single data set as input and assigns each input row to an output data set based on the value of a selector field.

#### FTP Enterprise Stage

The FTP Enterprise stage transfers multiple files in parallel. This stage invokes an FTP client and transfers the files to and from a remote host.

#### Generic stage

The Generic stage is a processing stage that allows you to call an Orchestrate® operator from within a stage and pass it options as required.

#### Surrogate Key Generator stage

The Surrogate Key Generator stage is a processing stage that generates surrogate key columns and maintains the key source.

#### Slowly Changing Dimension stage

The Slowly Changing Dimension (SCD) stage is a processing stage that works within the context of a star schema database. The SCD stage has a single input link, a single output link, a dimension reference link, and a dimension update link.

#### Pivot Enterprise stage

The Pivot Enterprise stage is a processing stage that pivots data horizontally and vertically.

#### Checksum stage

Use the Checksum stage to generate a checksum value from the specified columns in a row and add the checksum to the row.
