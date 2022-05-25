
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [CLOUD](https://github.com/ttltrk/TTT/blob/master/CLOUD/CLOUD.md) - [AWS](https://github.com/ttltrk/TTT/blob/master/PY/AWS/AWS.md)

---

### AWS_CCP

AWS Certified Cloud Practitioner

```
https://www.aws.training/
https://www.aws.amazon.com/
https://www.youtube.com/watch?v=SOTamWNgDKc&list=FLC0DnNXqThB_DaLH7BQxP9g&index=7&t=615s
https://www.youtube.com/watch?v=3hLmDS179YE&t=1964s
```

---

* [INTRO](#INTRO)
* [CLOUD_COMPUTING](#CLOUD_COMPUTING)
* [EVOLUTION_OF_CLOUD_HOSTING](#EVOLUTION_OF_CLOUD_HOSTING)
* [WHAT_IS_AMAZON](#WHAT_IS_AMAZON)
* [WHAT_IS_AWS](#WHAT_IS_AWS)
* [WHAT_IS_A_CSP](#WHAT_IS_A_CSP)
* [LANDSCAPE_OF_CSPS](#LANDSCAPE_OF_CSPS)
* [GARTNER_MAGIC_QUADRANT_FOR_CLOUD](#GARTNER_MAGIC_QUADRANT_FOR_CLOUD)
* [COMMON_CLOUD_SERVICES](#COMMON_CLOUD_SERVICES)
* [AWS_TECH_OVERVIEW](#AWS_TECH_OVERVIEW)
* [AWS_SERVICE_PREVIEW](#AWS_SERVICE_PREVIEW)
* [EVOLUTION_OF_COMPUTING](#EVOLUTION_OF_COMPUTING)
* [TYPES_OF_CC](#TYPES_OF_CC)
* [CLOUD_COMPUTING_DEPLOYMENT_MODELS](#CLOUD_COMPUTING_DEPLOYMENT_MODELS)
* [DEPLOYMENT_MODEL_USE_CASES](#DEPLOYMENT_MODEL_USE_CASES)
* [CREATE_AN_AWS_ACCOUNT](#CREATE_AN_AWS_ACCOUNT)
* [AWS_REGION_SELECTOR](#AWS_REGION_SELECTOR)
* [](#)
* [](#)
* [](#)
* [](#)
* [INTRO_AND_MAP_OVERVIEW](#INTRO_AND_MAP_OVERVIEW)
* [REGIONS](#REGIONS)
* [AVAILABILITY_ZONES](#AVAILABILITY_ZONES)
* [EDGE_LOCATIONS](#EDGE_LOCATIONS)
* [GOVCLOUD_REGIONS](#GOVCLOUD_REGIONS)
* [](#)
* [](#)
* [](#)
* [](#)


---

```
https://www.exampro.co/clf-c01
```

```
100usd
90 min
65q
70%
3y
```

---

#### INTRO

AWS Certified Cloud Practitioner

- Cloud concepts
- Security
- Technology
- Billing and Pricing

```
cloud concepts 28%
security 24%
technology 36%
billing and pricing 12%
```

White papers:

  - Overview of amazon webservices
  - Architecting for the cloud: AWS best practices
  - How AWS pricing works
  - Cost management in the AWS Cloud

[^^^](#AWS_CCP)

---

#### CLOUD_COMPUTING

The practice of using a network of remote servers hosted on the Internet to store,
manage, and process data, rather than a local server or a personal computer

On-Premise:
- You own the servers
- You hire the IT people
- You pay or rent the real-estate
- You take all the risk

Cloud Providers:
- Someone else owns the servers
- Someone else hires the IT people
- Someone else pays for your config cloud services and code, someone else
takes care of the rest

Six advantages and benefits of cloud computing

- Trade capital expense for variable expense
  - No upfront-cost instead of paying for data centers and servers. Pay on-demand
    pay only when you consume computing resources
- Benefit from massive economic of scale
  - Usage from hundreds of thousands of customers aggregated in the cloud. You are sharing
    the cost with other customers to get unbeatable savings
- Stop guessing capacity
  - Eliminate guesswork about infrastructure capacity needs. Instead of paying for idle
    or underutilized servers, you can scale up or down to meet the current need.
- Increase speed and agility
  - Launch resources within a few clicks in minutes instead of waiting days or weeks of your IT
    to implement the solution on-premise
- Stop spending money on running and maintaining data centers
  - Focus on your own customers, rather than on the heavy lifting of racking, stacking and powering servers
- Go global in minutes   
  - Deploy your app in multiple regions around the world with a few clicks. Provide lower latency and a better
    experience for your customers at minimal cost

[^^^](#AWS_CCP)

---

#### EVOLUTION_OF_CLOUD_HOSTING

- Dedicated server: One physical machine dedicated to single a business. runs a single
  web-app/site. Very expensive, high maintenance.

- Virtual Private server (VPS): One physical machine dedicated to a single business. The physical
  machine is virtualized into sub-machines. Runs multiple web-apps/sites. Better Utilization and
  isolation of resources.

- Shared hosting: One physical machine, shared by hundred of business. Relies on most tenants
  under-utilizing their resources. Very cheap, Limited functionality, poor isolation.

- Cloud hosting: Multiple physical machines that act as one system. The system is abstracted
  into multiple cloud services. Flexible, scalable, secure, cost-effective, high-configurability.

[^^^](#AWS_CCP)

---

#### WHAT_IS_AMAZON

An American multinational computer technology corporation headquartered in Seattle, Washington.
Amazon was founded in 1994 by Jeff Bezos and the company started as an online store for books and expanded to
other products.

Amazon has expanded beyond just an online e-commerce store into:
  - cloud computing (AWS)
  - digital streaming (Amazon prime Video, Amazon Prime Music, Twitch.tv)
  - Grocery Stores (Whole Foods Market)
  - artificial intelligence
  - Low orbit satellites (Kuniper Systems)
  - more...

Andy Jassy is the current CEO of Amazon.

[^^^](#AWS_CCP)

---

#### WHAT_IS_AWS

Amazon calls their cloud provider service Amazon Web Services - commonly referred to just AWS.
AWS was launched in 2006 is the leading cloud service provider in the world. Cloud Service Providers
can be initialized as CSPs.

- SQS - Simple Queue Service - was the first AWS service launched for public use in 2004
- S3 - Simple Storage Service - was launched in 2006
- EC2 - Elastic Compute Cloud - was launched in 2006

In November 2010, it was reported that all of Amazon.com's retail sites had migrated to AWS.
To support industry-wide training and skills standardization, AWS began offering
a certification program for computer engineers, on April 2013.  

Adam Selipsky >> CEO of AWS

[^^^](#AWS_CCP)

---

#### WHAT_IS_A_CSP

A Cloud Service Provider is a company which:

- provides multiple Cloud Services e.g. tens to hundreds of services
- those Cloud Services can be chained together to create cloud architectures
- those Cloud Services are accessible via Single Unified API e.g. AWS API
- those Cloud Services utilized metered billing based on usage e.g. per second, per hour  
- those Cloud Services have rich monitoring built in e.g. AWS CloudTrail
- those Cloud Services have an Infrastructure as a Service (IAAS) offering
- those Cloud Services offers automation via Infrastructure as Code (IaC)

Domain name >> Load Balancer >> Web Server >> Postgres DB / Sends Emails / Analytics / Stores Images

If a company offers multiple cloud services under a single UI but do not meet most of or all of these
requirements, it would be referred to as a Cloud Platform e.g. Twilio, HashiCorp, Databricks

[^^^](#AWS_CCP)

---

#### LANDSCAPE_OF_CSPS

- Tier-1 (Top Tier) - Early to market, wide offering, strong synergies between services, well recognized in the industry
(AWS, Microsoft Azure, Google Cloud Platform, Alibaba Cloud)

- Tier-2 (Mid Tier) - Backed by well-known tech companies, slow to innovate and turned to specialization
(IBM Cloud, Oracle Cloud, Rackspace - OpenStack)

- Tier-3 (Light Tier) - Virtual Private Servers (VPS) turned to offer core IaaS offering. Simple, cost-effective
(Vultr, Digital Ocean, Linode)

[^^^](#AWS_CCP)

---

#### GARTNER_MAGIC_QUADRANT_FOR_CLOUD

Magic Quadrant (MQ) is a series of market research reports published by IT consulting firm Gartner that rely on proprietary
qualitative data analysis methods to demonstrate market trends, such as direction, maturity and participants.

[^^^](#AWS_CCP)

---

#### COMMON_CLOUD_SERVICES

A cloud service provider can have hundreds of cloud services that are grouped into various types
of services. The four most common types of cloud services (the 4 core) for Infrastructure as a Service (IaaS)
would be:

- Compute - Imagine having a virtual computer that can run application, programs and code.
- Networking - Imagine having virtual network defining internet connections or network isolations
               between services or outbound to the internet.
- Storage - Imagine having a virtual hard-drive that can store files.
- Databases - Imagine a virtual database for storing reporting data or a database for general purpose web-application.  

AWS has over 200+ cloud services

[^^^](#AWS_CCP)

---

#### AWS_TECH_OVERVIEW

Cloud Service Provider (CSPs) that are Infrastructure as a Service (IaaS) will always have 4 core cloud service offerings:

- Compute >> EC2 Virtual Machines
- Storage >> EBS Virtual Hard drives
- Database >> RDS SQL Databases
- Networking >> VPC Private Cloud Network

Analytics, Application Integration, AR & VR, AWS Cost Management, Blockchain, Business Applications, Containers, Customer Engagement,
Developer Tools, End User Computing, Game Tech, IoT, ML, Management & Governance, Media Services, Migration & Transfer, Mobile,
Quantum Tech, Robotics, Security Identity & Compliance  

[^^^](#AWS_CCP)

---

#### AWS_SERVICE_PREVIEW

```
https://www.aws.amazon.com/
```

[^^^](#AWS_CCP)

---

#### EVOLUTION_OF_COMPUTING

##### Dedicated

- A physical server wholly utilized by a single customer.
- You have to guess your capacity
- You'll overpay for an underutilized server
- You can't vertical scale, you need a manual migration
- Replacing a server is very difficult
- You are limited by your Host Operating System
- Multiple apps can result in conflicts in resource sharing
- You have a guarantee of security, privacy, and full utility of underlying resources

##### VMs

- You can run multiple VMs on one machine
- Hypervisor is the software layer that lets you run the VM
- A physical server shared by multiple customers
- You are to pay for a fraction of the server
- You'll overpay for an underutilized VM
- You are limited by your Guest OS
- Multiple apps on a single VM can result in conflicts in resource sharing     
- Easy to export or import images for migration
- Easy to Vertical or Hortizonaalty scale

##### Containers

- VM running multiple containers
- Docker Daemon is the name of the software layer that lets you run multiple containers
- You can maximize the utilize of the available capacity which is more cost effective
- Your containers share the same underlying OS so containers are more efficient than multiple VMs
- Multiple apps can run side by side without being limited by to the same OS requirements  

##### Functions

- Are managed VMs running managed containers.
- Known as Serverless Compute
- You upload a piece of code, choose the amount of memory and duration
- Only responsible for code and data, nothing else
- Very cost-effective, only pay for the time code is running, VMs only run when there is code to be executed
- Cold starts is a side-effect of this setup  

[^^^](#AWS_CCP)

---

#### TYPES_OF_CC

- SAAS for customers - Software as a Service, A completed product that is run and managed by the service providers
                      (Salesforce, gmail, office)
- PAAS for developers - Platform as a Service, Removes the need for your organization to manage the underlying
                        infrastructure. Focus on the deployment and management of your applications.
                        (heroku)
- IAAS for admins - Infrastructures as a Service, The basic building blocks for cloud IT. Provides access to networking
                    feature, computers and data storage space
                    (azure, aws, ...)

[^^^](#AWS_CCP)

---

#### CLOUD_COMPUTING_DEPLOYMENT_MODELS

- Public cloud
  Everything (the workload or project) is built on the CSP also known as: Cloud-Native or Cloud first

- Private Cloud
  Everything built on companys datacenters. Also known as On-premise. The cloud could be openstack.

- Hybrid
  Using both On-Premise and CSP

- Cross-Cloud
  Using Multiple Cloud providers aka multi-cloud

[^^^](#AWS_CCP)

---

#### DEPLOYMENT_MODEL_USE_CASES

- Cloud
  - Fully utilizing cloud computing
    - startups
    - SaaS offerings
    - New projects and companies
    - Companys that are starting out today, or are small enough to make the leap from VSP to a CSP

- Hybrid
  - Using both Cloud and On-Premise
    - Banks
    - FinTech, Investment management
    - Large Professional Service providers
    - Legacy on-premise
    - Organizations that started with their own datacenter, cant fully move to cloud due to effort of migration or
    security compliance

- On-Premise
  - Deploying resources on-premises, using virtualization and resource management tools, is sometimes called "private cloud"
    - Public sector
    - Super sensitive data - hospitals
    - large enterprise with heavy regulation - insure companies
    - organizations that cannot run on cloud due to strict regulatory compliance or the sheer size of their organization

[^^^](#AWS_CCP)

---

#### CREATE_AN_AWS_ACCOUNT

https://www.aws.amazon.com/

[^^^](#AWS_CCP)

---

#### AWS_REGION_SELECTOR

[^^^](#AWS_CCP)

---

#### INTRO_AND_MAP_OVERVIEW

- 69 availability zones within 22 geographic regions around the world

- regions: physical location in the world with multiple availability zones
- availability zones: one or more discrete data centers
- edge location: datacenter owned by a trusted AWS

[^^^](#AWS_CCP)

---

#### REGIONS

A geographical distinct location which has multiple datacenters (AZs)
Every region is physically isolated from and independent of every other region in terms of location, power, water supply
Each regions has at least 2 AZs
AWS largest region is US-EAST
New services almost always become available first in US-EAST
Not all services are available in all regions
US-EAST-1 is the region where you see all your billing info  

[^^^](#AWS_CCP)

---

#### AVAILABILITY_ZONES

```
An AZ is a datacenter owned and operated by AWS in which AWS service run
Each region has at least two AZs
AZs are represented by a Region Code, followed by a letter identifier eg. us-east-1a
Multi-AZ  Distributing your instances across multiple AZs allows failover configuration for handling
requests when one goes down.
<10ms latency between AZs
```

[^^^](#AWS_CCP)

---

#### EDGE_LOCATIONS

An edge location is a datacenter owned by a trusted partner of AWS which has a direct connection to the AWS network.
These locations server requests for CloudFront and Route 53. Requests going to either of these services will be routed
to the nearest edge location automatically.
S3 Transfer Acceleration traffic and API Gateway endpoint traffic also use the AWS edge network .
This allows for low latency no matter where the end user is geographically located.

[^^^](#AWS_CCP)

---

#### GOVCLOUD_REGIONS

AWS GovCloud regions allow customers to host sensitive Controlled Unclassified Information and other types of regulated
workloads.
GovCloud regions are only operated by employees who are US citizens on US soil.
They are only accessible to US entities and root account holders who pass a screening process.
Customers can architect secure cloud solutions that comply with:
- FedRAMP high baseline
- DOJs Criminal Justice Information Systems (CJIS) Security policy
- US international traffic in ARMS regulations (ITAR)
- Export administration regulations (EAR)
- Department of Defense (DOD) Cloud computing security requirements guide

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---

####

[^^^](#AWS_CCP)

---
