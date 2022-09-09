
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [CLOUD](https://github.com/ttltrk/TTT/blob/master/CLOUD/CLOUD.md) - [AWS](https://github.com/ttltrk/TTT/blob/master/PY/AWS/AWS.md)

---

### W3_AWS_CT

AWS Certified Cloud Practitioner

```
https://www.aws.training/
https://www.aws.amazon.com/
https://www.w3schools.com/aws/index.php
```

---

* [INTRO](#INTRO)
* [CLOUD_CERTIFICATION](#CLOUD_CERTIFICATION)
* [GET_STARTED](#GET_STARTED)
* [CLOUD_COMPUTING](#CLOUD_COMPUTING)
* [CLOUD_BENEFITS](#CLOUD_BENEFITS)
* [EC2_INTRO](#EC2_INTRO)
* [EC2_INSTANCE_TYPE](#EC2_INSTANCE_TYPE)
* [EC2_PRICING](#EC2_PRICING)
* [EC2_SCALING](#EC2_SCALING)
* [EC2_AUTO_SCALING](#EC2_AUTO_SCALING)
* [ELASTIC_LOAD_BALANCING](#)
* [MESSAGING](#MESSAGING)
* [SNS](#SNS)
* [SQS](#SQS)
* [SERVERLESS](#SERVERLESS)
* [LAMBDA](#LAMBDA)
* [CONTAINERS](#CONTAINERS)
* [ECS](#ECS)
* [EKS](#EKS)
* [FARGATE](#FARGATE)
* [FIRST_RECAP](#FIRST_RECAP)
* [INFRASTRUCTURE](#INFRASTRUCTURE)
* [REGIONS](#REGIONS)
* [AVAILABILITY_ZONES](#AVAILABILITY_ZONES)
* [EDGE_LOCATIONS](#EDGE_LOCATIONS)
* [PROVISION](#PROVISION)
* [PROVISION_SERVICES](#PROVISION_SERVICES)

---

#### INTRO

##### What is AWS Cloud?

AWS (Amazon Web Services) is a cloud computing platform.
The first product (S3) was released in 2006.
AWS has grown a lot since then in both size and product range.
It is, to date, the largest cloud provider in the world.

##### Why learn AWS?

- AWS is the largest of the cloud providers
- AWS competence is popular in the job market
- You can do most things in the AWS Cloud
- Big community/support

[^^^](#W3_AWS_CT)

---

#### CLOUD_CERTIFICATION

##### AWS Certified Cloud Practitioner

AWS offers a Certification Program for AWS Cloud Practitioner.
Completing the exam grants the AWS Certified Cloud Practitioner title.
The certificate is for you who want to boost your skills and add credentials to your CV.

##### Document Your Skills

Knowledge is power, especially in the current job market. Documentation of your skills enables you to advance your career, or help you to start a new one.

##### Get a Certificate

Getting a certificate proves your commitment to upgrade your skills, gives you the credibility needed for more responsibilities, larger projects, and a higher salary.

[^^^](#W3_AWS_CT)

---

#### GET_STARTED

##### FREE_AWS_ACC

AWS offers a free tier, letting you explore and try out their services.
The free tier offers you limited use of services for free.
So let us get started with creating your free account!

##### HOW_TO_SIGN_UP

- Step 1: Go to the AWS website to get your free account: Sign up for free
- Step 2: Click the "Create a free account" button.
- Step 3: Complete the registration steps.

[^^^](#W3_AWS_CT)

---

#### CLOUD_COMPUTING

##### CLIENT_SERVER_MODEL

The client-server model is an important concept in cloud computing.
It is about many clients using services from a centralized server.

##### WHAT_IS_CLIENT_SERVER_MODEL

The Client-Server model is about a client that interacts and makes requests to a computer server.
A client is the way that the person interact with the server.
The server does tasks for the client and returns information.

##### CLOUD_COMPUTING

Cloud computing is a computing service made available over the internet.
Cloud computing is a pay-as-you-go model for delivering IT resources.
You pay only for what you use.

##### DEPLOYMENT_MODELS

There are three different kinds of deployment models:

- Cloud-based
- On-premises
- Hybrid

The models are different ways of accessing compute services - over the internet, locally, or in a combination.

##### CLOUD_BASED_DEPLOYMENT

Everything runs in the cloud.
This model allows you to build new applications or move existing ones to the cloud.
There are different levels of services ranging from low to high.
The level of service has different requirements on your management, architecting, and infrastructure.
For example, a company might create an application consisting of virtual servers, databases, and networking components entirely based in the cloud.

##### ON_PREMISES_DEPLOYMENT

Deploy resources by using virtualization and resource management tools.
On-Premises Deployment is also known as private cloud deployment.
For example, you might have applications that run on technology that is fully kept in your on-premises data center.
Though this model is much like legacy IT infrastructure, its application management and virtualization technologies make it more effective.

##### HYBRID_DEPLOYMENT

In a hybrid deployment, you connect cloud resources to an on-premises infrastructure.
This approach is relevant in many situations.
For example, you are working with sensitive data or are under specific government regulations.

[^^^](#W3_AWS_CT)

---

#### CLOUD_BENEFITS

##### Why Choose Cloud Computing?

There are many reasons for going with the cloud.
Cloud computing enables benefits such as:

- Cost savings
- Security
- Scalability
- Flexibility

##### Payment Model

The cloud payment model is flexible.
You do not have to invest in a data center, servers, and other resources.
The cloud services is a variable expense.
You can use the services from the start and consume more as you grow.

##### Fewer Operations

Having your own data centers and servers requires resources and staffing.
Cloud computing reduces operation and lets you focus on important things, such as your applications and customers.

##### Flexible Capacity

Having and managing your own servers can result in unused capacity and limitations.
On the other hand, you can grow freely with cloud computing.
You pay for what you use

##### Economies at Scale

Cloud computing is about shared resources.
Sharing the infrastructure cost with hundreds of thousands of other customers lowers the overall costs.

##### Increased Speed

The flexibility of cloud computing makes it easier to develop and deploy applications.
You can test and utilize resources as you want in minutes.
This freedom allows you to experiment and invent more.
It allows for instant resource access.

##### Global Reach

AWS has data centers all over the world.
The AWS Cloud's global reach allows you to swiftly deploy apps to consumers anywhere.
Customers can access your apps quickly.
You can pick the ones near your clients to reduce the latency.

[^^^](#W3_AWS_CT)

---

#### EC2_INTRO

##### AWS EC2 - Virtual Cloud Server

EC2 is a virtual server in the AWS Cloud.
AWS EC2 is short for AWS Elastic Cloud Compute.
It makes scaling of capacity up and down easy.

##### Why AWS EC2?

It makes the process of increasing and decreasing capacity easier.
As a result, you can access the resources at demand.
No upfront investment is needed.
You only pay for what you need.
EC2 is secure.

##### 1. Launch

Start with selecting a template with basic configurations.
The config includes the operating system, application server, or applications.
Next, decide the instance type and hardware configuration of your instance.
Finally, specify the security settings to control the traffic in and out of your instance.

##### 2. Connect

There are many ways to connect an instance.
Programs and applications have multiple connection methods to exchange data.
Users can connect and access the computer desktop by logging in.

##### 3. Use

Once connected, you can use the instance.
Execute commands to install software, add storage, copy, and organize files, and much more.

[^^^](#W3_AWS_CT)

---

#### EC2_INSTANCE_TYPE

##### AWS EC2 Instance Types

There are different instance types.
Which one to use depends on the needs.

##### More About EC2 Instance Types

The types are best used for different things.
Therefore, when selecting an instance type, consider the needs.
For example, needs can be a requirement for compute, memory, or storage.

##### General Purpose Instance

The General Purpose Instance balances computing, memory, and networking resources.
It fits many purposes. Such as:

- Application servers
- Gaming servers
- Backend servers for companies
- Small and medium databases

The General Purpose Instances are best when there is a balance between the resources.

##### Compute Optimized Instances

The Compute Optimized Instances are best there is a need for high compute.
This type is also good for application servers, gaming servers, and web applications.
The main difference is that this type is ideal for high-performance and compute-intensive needs.

##### Memory Optimized Instances

This type can deliver large dataset workloads fast.

Memory is a temporary storage area.
It loads from storage, holds the data, and processes it before the computer can run it.
The processing allows for a preloading process and gives the CPU direct access to the computer program.
The Memory Optimized Instances are best when huge amounts of data need to be preloaded before running the app.

##### Accelerated Computing Instances

This type use hardware accelerators.
The accelerators boost the data processing.
The Accelerated Computing Instances are best for graphics applications and streaming.

##### Storage Optimized Instances

This type is best when you have large datasets on local storage.
Some examples:

- Large file systems
- Data warehouses
- Online transaction systems

The Storage Optimized Instances are designed to deliver many inputs as fast as possible.

[^^^](#W3_AWS_CT)

---

#### EC2_PRICING

##### AWS EC2 Pricing

With AWS EC2 you pay for the compute time.
You only pay for the compute time that you use.
It offers different pricing options.

##### On Demand Instances

On Demand Instances are best used for short-term workloads.
It requires no upfront costs or minimum amount on the purchase.
The instances run until you stop them.
You pay for what you use.

##### AWS EC2 Savings Plan

The savings plan is a commitment for usage over a 1-year or 3-year term.
Committing to a period gives a discounted price.
If you surpass the budget, the cost goes to normal (on-demand) prices.

##### Reserved Instances

The Reserved Instances are used to reserve instances for an agreed period.
The options are for 1-year or 3-years. The latter one gives the highest discount.

##### Spot Instances

This pricing model is best for workloads with flexible start and end times, which can take interruptions.
Spot instances can give up to a 90% cost savings.
The reason behind the discount is that AWS can optimize its capacity, giving you better prices.

#####
#####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---

####

[^^^](#W3_AWS_CT)

---
