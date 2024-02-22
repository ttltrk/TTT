
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

- [link](https://www.thoughtspot.com/data-trends/data-integration/what-is-a-data-pipeline-and-how-do-you-build-one)

---

#### DATA_INTEGRATION

##### Data pipeline architecture examples

There are many different types of data pipeline architectures that can be used to move data from one place to another. Some of the most common include:

##### ETL (Extract, Transform, Load) data pipeline

ETLs are used to move data from a variety of sources into a centralized repository, such as a data warehouse. The data is extracted from the sources, transformed into a consistent format, and then loaded into the target repository.

Modern data stack ETLs: Matillion, Rudderstack, and Supermetrics

##### ELT (Extract, Load, Transform) data pipeline

ELT pipelines are similar to ETL pipelines, but the data transformation step is performed after the data is loaded into the target repository. This allows for more flexibility in how the data is transformed, but can also lead to increased complexity.

Modern data stack ELTs: Airbyte, Fivetran, and Talend

##### Data replication pipelines

Data replication pipelines are used to copy data from one repository to another, typically in real-time. This is often used for disaster recovery or to create a read-only copy of data for reporting and analytics purposes.

Modern data stack database replication tools: Hevo Data, Rubrik, and Veeam

##### Data streaming pipelines

Data streaming pipelines are used to move data in real-time from one system to another. This is often used for applications that need to process data as it is generated, such as financial trading systems or social media analytics.

Modern data stack data streaming tools: Apache Kafka, Redpanda, and Confluent

Which type of data pipeline architecture is best for your needs will depend on a number of factors, including the size and complexity of your data, the frequency with which it needs to be moved, and the resources available to build and maintain the pipeline.

---
