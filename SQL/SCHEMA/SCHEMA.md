
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SQL](https://github.com/ttltrk/TTT/blob/master/SQL/SQL.md)

---

* [source](https://www.thoughtspot.com/data-trends/data-storage/what-is-a-cloud-data-warehouse)

---

#### SCHEMA

A database schema defines how data is organized within a relational database; this is inclusive of logical constraints such as, table names, fields, data types, and the relationships between these entities. Schemas commonly use visual representations to communicate the architecture of the database, becoming the foundation for an organization’s data management discipline. This process of database schema design is also known as data modeling.

These data models serve a variety of roles, such as database users, database administrators, and programmers. For example, it can help database administrators manage normalization processes to avoid data duplication. Alternatively, it can enable analysts to navigate these data structures to conduct reporting or other valuable business analyses. These diagrams act as valuable documentation within the database management system (DBMS), ensuring alignment across various stakeholders.

##### Database schema vs. database instance

A database schema is considered the “blueprint” of a database which describes how the data may relate to other tables or other data models. However, the schema does not actually contain data.

A sample of data from a database at a single moment in time is known as a database instance. It contains all the properties that the schema describes as data values. Since database instances are just a snapshot at a given moment, they’re likely to change over time, unlike database schemas.

---

#### Types of database schemas

While the term schema is broadly used, it is commonly referring to three different schema types—a conceptual database schema, a logical database schema, and a physical database schema.

- Conceptual schemas offer a big-picture view of what the system will contain, how it will be organized, and which business rules are involved. Conceptual models are usually created as part of the process of gathering initial project requirements.
- Logical database schemas are less abstract, compared to conceptual schemas. They clearly define schema objects with information, such as table names, field names, entity relationships, and integrity constraints—i.e. any rules that govern the database. However, they do not typically include any technical requirements.
- Physical database schemas provide the technical information that the logical database schema type lacks in addition to the contextual information, such as table names, field names, entity relationships, et cetera. That is, it also includes the syntax that will be used to create these data structures within disk storage.

##### What is a star schema?

A star schema is a database schema used to store data in a star format. This schema consists of a central table, called the "fact table," and a number of directly connected other tables, called "dimension tables." The fact table contains information about metrics or measures, while the dimension tables contain information about descriptive attributes. The star schema is very simple and easy to understand, making it ideal for cloud data warehousing and business intelligence applications.

##### What is a snowflake schema?

A snowflake schema is a type of database schema that is used to store data in a more complex format than the star schema. The snowflake schema consists of a central table, which is called the "fact table," and a number of other tables, which are called "dimension tables." As with other schemas, the fact table contains information about events or facts, while the dimension tables contain information about the dimensions of those events or facts.

##### 6 key differences between star schema and snowflake schema

- A star schema has denormalized dimension tables, while a snowflake schema has normalized dimension tables.
- A star schema is easier to design and implement than a snowflake schema.
- A star schema can be more efficient to query than a snowflake schema, because there are fewer JOINs between tables.
- A star schema can require more storage space than a snowflake schema, because of the denormalized data.
- A star schema can be more difficult to update than a snowflake schema, because of the denormalized data.
- A star schema can be more difficult to troubleshoot than a snowflake schema, because of the denormalized data

##### Which schema is right for you?

The answer depends on your specific needs and requirements. If you’re looking for a simple, efficient cloud data warehouse solution, a star schema might be the best option. But if you need more flexibility to accommodate changing data requirements, a snowflake schema may be a better choice.

---

#### Benefits of database schemas

As big data continues to grow, database objects and schemas are critical to ensure efficiency in day-to-day company operations. If relational models are poorly organized and poorly documented, they will be harder to maintain, posing problems for both its users and the company.

Some key benefits of database schemas include:

- Access and security:  Database schema design helps organize data into separate entities, making it easier to share a single schema within another database. Administrators can also control access through database permissions, adding another layer of security for more proprietary data. For example, a single schema may contain personally identifiable information (PII), which you would want to encrypt for privacy and security purposes.
- Organization and communication: Documentation of database schemas allow for more organization and better communication among internal stakeholders. Since it provides a common source of truth, it enables users to understand the logical constraints and methods of aggregation across tables.  
- Integrity: This organization and communication also helps to ensure data validity. For example, it can help administrators manage normalization processes to avoid data duplication. It can also assist in monitoring compliance of the constraints in the schema's database design, enabling adherence to ACID properties (atomicity, consistency, isolation, durability).

---
