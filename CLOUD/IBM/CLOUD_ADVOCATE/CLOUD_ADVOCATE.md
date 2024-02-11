
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [CLOUD](https://github.com/ttltrk/TTT/blob/master/CLOUD/CLOUD.md) - [IBM](https://github.com/ttltrk/TTT/blob/master/CLOUD/IBM/IBM.md)

---

#### IBM_CLOUD_ADVOCATE

---

####

---

####

---

####

---

####

---

#### The Job Roles that Support Cloud

There are many job roles that organizations can implement in their environment to support IBM Cloud. Identifying the responsibilities of each of these roles and the right individuals in these roles will create success for an organization.

---

#### The Established Cloud Deployment Models

```
The Department for Work and Pensions - (DWP)
A cloud services provider - (CSP)
```

The most widely known cloud deployment models are:

- public cloud
- private cloud
- virtual private cloud
- hybrid cloud

##### Public Cloud

A public cloud provides access to computing resources for multiple users over the internet. Users can access servers, storage, network, security, and applications that are owned and managed by a cloud service provider. Resources are paid for by subscription or per use pricing.

Some benefits of public cloud are:

- A public cloud is very reliable because there are many available servers and networks.
- Users can easily predict recurring operating expenses by using on-demand resources and only paying for what is used.
- The cloud provider owns the data centers, hardware, and infrastructure on which customer workloads are run and is responsible for all maintenance.

##### Private Cloud

A private cloud (also known as an internal cloud or corporate cloud) is a cloud computing environment in which all hardware and software resources are dedicated exclusively to, and accessible by, a single customer and can be accessed either on or off premises. It can be owned, operated, and managed by a third party, the organization itself, or a combination of both.

Some benefits of private cloud are:

- A user has exclusive access to the cloud computing resources.
- There is greater control over resources, data security, and regulatory compliance.
- Applications and the infrastructure are more easily customized.

##### Hybrid Cloud

A hybrid cloud provides a combination of a public and private cloud infrastructure in a single infrastructure.

Some of the benefits of a hybrid cloud are:

- Users can choose either cloud environment, public or private, for each individual application or workload.  
- Sensitive data and applications can be easily separated and run in an on-premises data center.
- Workloads are easily moved between public and private cloud infrastructure.

Some organizations use the term hybrid cloud when combining cloud and non-cloud or traditional infrastructure.

---

#### Major Cloud Service Models

```
SaaS, PaaS, and IaaS are the major cloud service models.
A ready to use infrastructure and software application are provided by SaaS.
Customers use PaaS to build, test, run, and update applications quickly.
Customers use IaaS to get access to infrastructure resources such as compute, storage, and networking.
```

##### SaaS - Software as a service

SaaS provides a ready to use infrastructure and software application. The SaaS vendor manages all of the upgrades and maintenance. Users simply create an account, pay a subscription fee, and can start using applications immediately.

Some advantages of SaaS:

- Users can try products on a free trial or for a low monthly fee with minimal financial risk.
- Apps can be accessed over the internet on any device with a browser.
- It is easy to add additional users and storage.

##### PaaS - Platform as a service

PaaS helps developers build, test, run, and update applications quickly and inexpensively without having to manage a hardware platform. However, there is not much control over changes made by the provider. The cloud provider hosts all servers, storage, operating system software, databases, and development tools in their data center, providing a fully functioning development environment.

Some advantages of PaaS:

- Hardware and software do not need to be purchased to build and maintain an application development platform because the cloud provider manages the entire platform.  
- More choices for development tools and databases are available.
- Additional compute, storage, and networking capacity can be purchased quickly and used immediately.

##### IaaS - Infrastracture as a service

IaaS provides infrastructure resources such as compute, storage, security, and networking on demand. It allows users to increase or decrease resources, as needed. The cloud provider only manages physical compute resources, data centers, network, and security resources. Control over resources is limited.

Some advantages of IaaS:

- Customers receive pre-virtualized compute, network, and storage resources.
- Users can provision, test, and scale resources quickly.
- IaaS providers are in many locations around the world, reducing latency and improving performance.

##### CaaS - Container as a service

It is worth mentioning that container as a service (CaaS) is another cloud service model often used. It is container based virtualization. The cloud provider delivers container engines, orchestration, and underlying compute resources to users.

---

#### Emergent Cloud Deployment Models

```
In Distributed Cloud, you should have learned that:

- Distributed cloud allows users to run public cloud services in multiple locations.
- IBM Cloud Satellite is a distributed cloud solution.
- Users can run workloads close to where the data is created using edge computing.
- Distributed cloud enables the processing of data, such as personal data, in a specific location, which helps meet regulatory compliance.

In Multicloud, you should have learned that:

- Multicloud users can use cloud services from more than one cloud vendor.
- Users choose a combination of pricing, performance, security, and compliance requirements from different cloud providers.
- When there is an outage on one cloud, it may not impact services offered on another cloud.
- Many organizations use a hybrid multicloud.
```

##### Distributed Cloud

Distributed cloud is a cloud computing model that enables users to run public cloud services in multiple locations. Locations can be on premises, in a cloud provider's data center, in third-party, or colocation centers. Everything can be managed in a single control plane.

IBM offers a distributed cloud solution with IBM Cloud® Satellite. It helps users deploy and run applications across on premises, edge computing, and public cloud environments.

##### Edge Computing

Edge Computing is the process of running workloads close to where the data is created. Data does not have to be moved to a central cloud data center for processing and then back to where process automation occurs. As a result, applications can process large amounts of data very quickly, in real time.

##### Multicloud

Multicloud is a cloud computing model that refers to using cloud services from more than one cloud vendor. Businesses often use platform as a service (PaaS) or infrastructure as a service (IaaS) from multiple cloud service providers, such as IBM Cloud and Microsoft Azure. They may even use software as a service (SaaS) from different cloud providers, such as Salesforce and Workday.

---

#### IBM Cloud Interface

##### IBM Cloud Console

The IBM Cloud console is an interface where users can access, reference, and manage cloud resources. The cloud console also provides access to the IBM Cloud catalog, cloud documents, IBM support center, the cost estimator tool, IBM Cloud shell, and account management tools.

When a user has an account and is logged into IBM Cloud, the cloud console provides the means to create resources from the dashboard. From the dashboard, users can easily access documentation, the cloud services catalog, see billing information, and seek support.

---

#### The Structure of IBM Cloud

```
In Single-Zone Regions, you should have learned that:
- SZRs provide only one availability zone for a region.
- Resources remain in the same zone where a cluster is deployed.
- Resources in an SZR cannot be spread across zones.
- SZR locations are in India and South Korea.

In Multizone Regions, you should have learned that:
- Three or more zones form a multizone region.
- Cloud services are consistent across zones.
- If a network failure occurs, data is automatically redirected to an alternative zone.
- Services in MZRs have better resiliency and connection speed.

In Data Centers, you should have learned that:
- Data centers are large warehouses or rooms.
- Each data center contains a pod of infrastructure equipment.
- Data center locations are not isolated from multizone regions.
- Each data center contains infrastructure resources used for services and apps.
```

##### Single-Zone Regions

A single-zone region (SZR), as its name implies, is a region made up of one availability zone. While resources in this zone are highly available, an SZR does not provide fault tolerance during failure events when the entire zone is affected. Cloud resources deployed from an SZR are unavailable during a failure event because resources cannot be spread across zones.

SZR locations are:

- Seoul, South Korea
- Chennai, India

##### Multizone Regions

Many IBM Cloud services are deployed into multizone regions to provide high availability. Three or more zones form a multizone region (MZR). Each zone is independent from the others and the network links between have low latency and high bandwidth. Spreading workloads across three zones increases availability to 99.99% compared to single zone deployment.

##### Data Centers

Within a region, one or more data centers are found in a metropolitan city. These sites support classic infrastructure. Each data center is a large warehouse or room that contains pods which are standardized containers of infrastructure equipment. This includes the power, cooling, compute, network, and storage resources used for services and apps.

---

#### Security Measures and Security Options

```
In How IBM Cloud Ensures Security Readiness, you should have learned that:
- The cloud platform provides layers of security controls.
- IBM security policies are driven by best practices for systems, networking, and secure engineering.
- Third party security firms are also used to assess the cloud platform security and compliance.
- Customers can conduct their own security testing for their resources.
- IBM Cloud adheres to industry standards such as CSA, FISA, and MTCS.

In Encryption and IBM Cloud, you should have learned that:
- All data is encrypted in transit.
- Encryption options include BYOK and KYOK.
- Encryption key life cycle events are monitored using the IBM Cloud activity tracker.
- IBM owned keys are used in most services.

In Shared Responsibility, you should have learned that:
- Responsibility for managing and securing products in IBM Cloud is shared by IBM and customers.
- Identity and access management tasks include access control policies.
- Customers are responsible for all data and applications when tasks are completed for products.
```

##### Compliance Programs

IBM shows commitment to protecting customer data and applications through compliance and trust certifications. Some of the industry standards that IBM Cloud adheres to are:

- The Cloud Security Alliance (CSA) promotes security assurance best practices in cloud computing by providing the Security, Trust, and Assurance Registry (STAR). STAR documents security controls provided by cloud compute resources. IBM Cloud platform services have a level 1 CSA STAR registration.

- The Federal Information Security Management Act of 2002 (FISMA) ensures federal government data is secure by requiring programs to conduct annual reviews of information security programs. IBM Cloud for Government holds a FISMA Impact Level High certification.

- The Multi-Tier Cloud Security (MTCS), Singapore Standard SS 584, is a regional compliance standard that IBM Cloud platform services help meet. Cloud service providers operating in Singapore must adhere to this security standard.

---

#### Industry Compliance Standards

- The IBM Cloud platform and services are built to be secure, trustworthy, and meet the needs of industry standards.
- The cloud is designed with secure engineering practices and layered security.
- Cloud users can enable additional layers of security on their cloud to meet compliance regulations.
- Enabling EU support on a cloud account ensures support tickets are sent to IBM support teams in Europe.

---

#### Account types

```
IBM Cloud account types include Pay-Go, Subscription, and Enterprise:

- Pay-As-You-Go, sometimes called just Pay-Go, lets users explore the full catalog of IBM Cloud services and pay for only the ones they wish to use, such as cloud object storage, cloud databases, and artificial intelligence (AI) services.

- With subscription accounts, customers commit to pay a minimum amount per month for a specific duration. The longer the duration, the greater the discount.

- IBM Cloud Enterprise accounts are designed for organizations that need to centrally manage billing and usage across multiple accounts.
```

IBM manages its services via accounts, comprised of systems and components that define the relationship among the resources each user and user group can access.

##### Pay-go accounts are best for users who:

- Want to explore IBM Cloud for free.
- Do not want to make a long-term commitment.
- Do not use traditional severities or require a response within a specific time.

##### Subscription

Subscription accounts offer all of the IBM Cloud services as Pay-go, but add predictability and discounts for platform services. Customers commit to pay a minimum amount per month for a specific duration. The longer the duration, the greater the discount.

##### Enterprise

An Enterprise account is a type of subscription account, which gathers multiple accounts into a single entity to centrally manage billing and usage across an organization.  As such, it’s not technically an "account type," but a construct designed to simplify account management.

Users with Enterprise accounts can:

- Create nested, multi-tiered hierarchies of accounts, broken out by geography, department or whatever structure best fits the organization.
- View invoicing and payment across the enterprise, with a shared subscription credit pool.
- View details about usage and costs.

---

#### Support Plans

```
The three kinds of support plans (basic, advanced, and premium) all have different levels of service.

- Basic: for non-production environments that do not require short response times.
- Advanced: for environments with a limited number of business-critical applications.
- Premium: for mission-critical environments that have a strategic dependency on IBM Cloud.
```

---

#### Identify and Access Management !!!

```
In IAM Defined, you should have learned that:
- Identity and Access Management (IAM) enables customers to securely authenticate users for platform services and control access to resources across the IBM Cloud platform.
- IAM uses access policies to assign users and service IDs access to the resources within an enterprise account.
- Access policies are how users, service IDs, and access groups in an account are given permission to access and take actions on account resources. Policies include a subject, target, and role.
- The value of using a single resource group and a single access group containing all the users that need the resources in the resource group, is a single policy can be configured that grants access to all resources in the resource group.  
- Customers requiring enhanced security can require multifactor authentication (MFA) to add an extra layer of security to an account by requiring all users to authenticate using an additional authentication factor beyond an ID and password.

In Assigning Access to Resources, you should have learned that:
- To assign access to resources in IAM, the account administrator must identify or create access groups, invite users to the account, and then manage the user access.

In Service and Platform Roles, you should have learned that:
- Service access roles define a user or service’s ability to perform actions on a service instance, such as accessing the console or performing API calls. There are three possible service access roles: manager, writer, and reader.
- Platform management roles cover a range of actions, including the ability to create and delete instances, manage aliases, bindings, and credentials, and manage access. These roles, as the name suggests, enable management of the platform itself. Through them, users are granted a number of privileges, including the ability to create instances, manage service IDs, manage users and permissions, and create resource groups.

In IAM Scenario: Three Teams Working on Three Projects, you should have learned that:
- Account administrators require account to All Identity and Access services and the specific platform access role for administrators.
- The recommendation for naming resource groups is to use names that allow for easy identification, such as the Group_TaskType convention.
- Account users (developers in the scenario) require the editor and/or manager roles if they need to create and management services.
```

IAM provides security and consistent access control. It enables customers to securely authenticate users for platform services and control access to resources across the IBM Cloud® platform. IAM can be better understood by considering its two major aspects: identity and access management.

##### Access Control Models

There are two common access control models:

- attribute-based access control (ABAC) and
- role-based access control (RBAC).

##### IAM Roles

With  IAM, enterprises can manage and define access for users and resources in their account. The available role types are service and platform roles.

---

#### Virtual Private Cloud (VPC)

```
In IBM VPC Defined, you should have learned that a VPC allows an enterprise to establish its own private cloud-linked computing environment.

In Key Features of IBM VPC, you should have learned that the key features of IBM VPC are its agility, availability, security, and affordability.

In Key Features of IBM VPC, you should have learned that the main business benefits of IBM VPC are flexible business growth, reduced risk across the entire data lifecycle, and its features and functionality allow businesses to channel more resources towards innovation.
```

A virtual private cloud (VPC) allows an enterprise to establish its own private cloud-linked computing environment. A VPC lives on a shared public cloud infrastructure.

A primary defining feature of the VPC is it allows an enterprise to define and control a virtual network that is logically isolated from all other public cloud tenants. This creates a private and secure place on the public cloud.

##### VPC Architecture

VPCs allow users to deploy cloud resources into their own isolated virtual network. The cloud resources are in three categories: Compute, Storage, and Networking.

---

#### Core Services

---

#### Common Storage Options

Cloud storage is a computer model where data and files are stored in digital format in the cloud. Block, object, file, and direct attached are the four types of cloud storage that have many features.

- block storage

```
Suitable for databases and other applications where disk speed is important
Suitable for workloads that need low-latency storage to work effectively
Infinite in size and a great repository for unstructured data types
Includes data encryption at rest and in transit
Provisioned in 'volumes' that can be mounted onto a computer node

Handles high-intensity workloads
Provides encryption for data
May be provisioned in any IBM Cloud Data Center
Provides for snapshot creations and advanced scheduling
Typically used for database workloads
```

- object storage

```
Not attached to a computer node. Accessed with an application program interface (API)
Uses buckets and objects that are stored within these buckets in a structurally flat way
Used to store files that are static
Slowest in terms of read and write speeds
Least expensive out of all storage options
Files are stored in three locations when saved causing this to be the most resilience storage option

Manages policies for accessing and modifying objects on IBM Cloud
All objects stored in IBM Cloud object storage are encrypted by default
Offers SQL query support
High-Speed Transfer allows data to be uploaded quickly
Objects can be accessed via Software Development Kits (SDKs) and Application Programming Interfaces (APIs)
```

- file storage

```
Presented as a network file system (NFS)
Can be mounted or used on multiple servers at once
Involves less disk management and maintenance
Can be slower than Direct Attached or block storage
Works well for organizing data in a hierarchical folder structure

Backs up data daily, weekly, or on a custom schedule
Includes a browser-based portal that allows scheduling jobs, setting retention, policy, and performing one click restores
Includes end-to-end data encryption that protects the data at its source
Protects data across geographically dispersed sources
```

- direct attached storage

```
Known as local storage
Storage is fast and normally used to store a server's operating system
Presented to a cloud-based server
Cannot be shared with other computer nodes

Fast storage
Able to store a server’s operating system
Operating system only lasts while attached to a computer resource
Redundant array of independent disk techniques can be used
```

---

####

---

####

---

####

---

####

---

####

---

####

---
