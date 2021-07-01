
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [CLOUD](https://github.com/ttltrk/TTT/blob/master/CLOUD/CLOUD.md)

---

### IBM_CLOUD

---

https://cognitiveclass.ai/badges/cloud-core
https://courses.cognitiveclass.ai/courses/course-v1:IBMDeveloperSkillsNetwork+CC0101EN+2020T1/course/

---

* [INTRO](#INTRO)
* [OVERVIEW_CC](#OVERVIEW_CC)
* [CC_SERVICE_AND_DEPLOYMENT](#CC_SERVICE_AND_DEPLOYMENT)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### INTRO

Welcome to introduction to cloud computing, the first in the series of
four courses designed to give you the foundational skills you need to be a
cloud practitioner. Today cloud represents a huge market, one that is
continuing to grow at an unprecedented scale. Enormous computational power, once
considered a prerogative of large enterprises, is now available at the
fingertips of even the smallest of businesses and individual developers,
thanks to Cloud.

Moreover, the Cloud makes all this computational power highly affordable
with pay-as-you-go economics. If you look at some of the key emerging technologies
of our times, such as artificial intelligence, the Internet of Things,
Blockchain and Analytics, all of these technologies work with massive amounts
of data and need huge storage space and computational power in order to work -
making cloud possibly the only viable platform for these technologies.

This course will introduce you to the core concepts of cloud computing - from its
essential characteristics to the different service and deployment models,
cloud architecture, security and monitoring, emerging technologies
supported by the cloud, and career opportunities available in the domain.

The course is designed for everyone - it doesn't matter if you have a background
in cloud technologies. Whether you're an IT person looking to upscale or explore
this domain, a fresh graduate looking to make a career in cloud technologies, or
an IT decision-maker, this course will equip you with what you need to get
started. With just the public cloud service market expected to grow to 331.2
billion by 2022, it's a time to be in the cloud computing
industry. Today there are more open positions in cloud than the number of
skilled people available. And the sheer growth of the cloud market makes it an
exciting and dependable career prospect for the coming times. So, congratulations
on embarking on this exciting journey. And good luck!

[^^^](#IBM_CLOUD)

---

#### OVERVIEW_CC

##### Definition and Essential Characteristics of Cloud Computing

Cloud computing, also referred to as “the cloud,” is the delivery of on-demand computing
resources—everything from applications to data centers—over the internet on a pay-for-use
basis.

To get a common understanding of cloud computing, let’s start with the US National Institute
of Standards and Technology (NIST’s) definition of cloud computing.

NIST defines cloud computing as a model for enabling convenient, on-demand network access
to a shared pool of configurable computing resources that can be rapidly provisioned
and released with minimal management effort or service provider interaction.

Examples of computing resources include:
- networks
- servers
- storage
- applications
- services

This cloud model is composed of:
- five essential characteristics
- three deployment models
- three service models

5 Essential characteristics of the cloud:

- on-demand self-service
- broad network access
- resource pooling
- rapid elasticity
- measured service

1. On-demand Self-service: the 1st characteristic, means that you get access to cloud resources
such as the processing power, storage, and network you need, using a simple interface,
without requiring human interaction with each service provider.

2. Broad Network Access, means that cloud computing resources can be
accessed via the network through standard mechanisms and platforms such as mobile phones,
tablets, laptops, and workstations.

3. Resource Pooling, is what gives cloud providers economies of
scale, which they pass on to their customers, making cloud cost-efficient.
Using a multi-tenant model, computing resources are pooled to serve multiple consumers; cloud
resources are dynamically assigned and reassigned, according to demand, without customers needing
to concern themselves with the physical location of these resources.

4. Rapid Elasticity, the 4th characteristic, implies that you can access more resources
when you need them, and scale back when you don’t—because resources are elastically
provisioned and released.

5. Measured Service, means that you only pay for what you use or
reserve as you go; if you’re not using resources, you’re not paying.
Resource usage is monitored, measured, and reported transparently based on utilization.

As we see, cloud computing is really about utilizing technology “as a service”—leveraging
remote systems on-demand over the open internet, scaling up and scaling back, and paying for
what you use.
It is a revolution in that it has changed the way the world consumes compute services
by making them more cost-efficient while also making organizations more agile in responding
to changes in their markets.
+
As I mentioned earlier in this talk, the cloud model is composed of five essential characteristics,
three deployment models, and three service models.
We just went over the five essential characteristics.
While we will go into greater depth of the deployment and the service models in the later
videos, let me leave you with a brief overview of these models.

There are three types of cloud deployment models:

- Public
- Private
- Hybrid

1. Public cloud is when you leverage cloud services over the open internet on hardware owned by
the cloud provider, but its usage is shared by other companies.

2. Private cloud means that the cloud infrastructure is provisioned for exclusive use by a single
organization. It could run on-premises or it could be owned, managed, and operated by a service provider.

3. And when you use a mix of both public and private clouds, working together seamlessly,
that is classified as the Hybrid model.

Now, let’s look at the three service models that are based on the three layers in a computing stack:

- Infrastructure
- Platform
- Applications

These cloud computing models are aptly referred to as:

- Infrastructure as a Service (Iaas)
- Platform as a Service (PaaS)
- Software as a Service (SaaS)

1. In an Infrastructure as a Service model, you get access to infrastructure and physical
computing resources such as servers, networking, storage, and data center space - without the
need to manage or operate them.

2. In a Platform as a Service model, you get access to the platform, that is the hardware
and software tools, usually those needed to develop and deploy applications to users over
the Internet.

3. Software as a Service is a software licensing and delivery model in which software and applications
are centrally hosted and licensed on a subscription basis, and sometimes also referred to as "on-demand
software."

##### History and Evolution of Cloud Computing

Cloud computing is an evolution of technology over time.

The concept of cloud computing dates to the 1950s when large-scale mainframes with high-volume
processing power became available.
In order to make efficient use of the computing power of mainframes, the practice of time
sharing, or resource pooling, evolved.
Using dumb terminals, whose sole purpose was to facilitate access to the mainframes, multiple
users were able to access the same data storage layer and CPU power from any terminal.

In the 1970s, with the release of an operating system called Virtual Machine (VM), it became
possible for mainframes to have multiple virtual systems, or virtual machines, on a single
physical node.
The virtual machine operating system evolved the 1950s application of shared access of
a mainframe by allowing multiple distinct compute environments to exist on the same
physical hardware.
Each virtual machine hosted guest operating systems that behaved as though they had their
own memory, CPU, and hard drives, even though these were shared resources.
Virtualization thus became a technology driver and a huge catalyst for some of the biggest
evolutions in communications and computing.

Even 20 years ago, physical hardware was quite expensive.
With the internet becoming more accessible, and the need to make hardware costs more viable,
servers were virtualized into shared hosting environments, virtual private servers, and
virtual dedicated servers, using the same types of functionality provided by the virtual
machine operating system.

So, for example, if a company needed ‘x’ number of physical systems to run their applications,
they could take one physical node and split it into multiple virtual systems.
This was enabled by hypervisors.

A hypervisor is a small software layer that enables multiple operating systems to run
alongside each other, sharing the same physical computing resources.
A hypervisor also separates the Virtual Machines logically, assigning each its own slice of
the underlying computing power, memory, and storage, preventing the virtual machines from
interfering with each other.
So, if, for example, one operating system suffers a crash or a security compromise,
the others keep working.
As technologies and hypervisors improved and were able to share and deliver resources reliably,
some companies decided to make the cloud’s benefits accessible to users who didn’t
have an abundance of physical servers to create their own cloud computing infrastructure.
Since the servers were already online, the process of spinning up a new instance was
instantaneous.
Users could now order cloud resources they needed from a larger pool of available resources,
and they could pay for them on a per-use basis, also known as Pay-As-You-Go.

This pay-as-you-go or utility computing model became one of the key drivers behind cloud
computing taking off.
The pay-per-use model allowed companies and even individual developers to pay for the
computing resources as and when they used them, just like units of electricity.
This allowed them to switch to a more cash-flow friendly OpEx model from a CapEx model.
This model appealed to all sizes of companies, those who had little or no hardware, and even
those that had lots of hardware, because now, instead of making huge capital expenditures
in hardware, they could pay for compute resources as and when needed.
It also allowed them to scale their workloads during usage peaks, and scale down when usage
subsided.

And this gave rise to modern-day cloud computing.
The impact of the evolution of the cloud has been immense.
In the next training, we will go over some key considerations for cloud adoption.

##### Key Considerations for Cloud Computing

Every organization’s transformation journey is unique, and therefore every organization’s
cloud adoption strategy is also unique to them.

Agility, flexibility, and competitiveness are key drivers for moving to the cloud, provided
it is done without creating business disruption or issues related to security, compliance,
and performance.
Let’s look at some key considerations that organizations can use as a guide while working
through their cloud strategy.

1. The first consideration is infrastructure and workloads.

The cost of building and operating data centers can become astronomical.
On the other hand, low initial costs and pay-as-you-go attributes of cloud computing can add up to
significant cost savings.
Also, a point to consider is that not all workloads may be ready for the cloud, as-is.

2. The second consideration is around SaaS and development platforms.

Organizations need to consider if paying for application access is a more viable option
than purchasing off-the-shelf software and subsequently investing in upgrades.
Organizations also need to consider speed and productivity—what it means for them
to get a new application up and running in ‘x’ hours on the cloud versus a couple
of weeks, even months on traditional platforms.
And the person-hour cost efficiencies they gain from using cloud dashboards, real-time
statistics, and active analytics.

Lastly, organizations need to consider the impact of making a wrong decision—their
risk exposure.
Is it riskier, for example, for them to invest in the hardware and software or rent by the
hour?

Is it safer for them to work on a 12-month plan to build, write, test, and release the
code if they’re uncertain about adoption?
And is it better for them to “try” something new paying-as-you-go rather than making long-term
decisions based on little or no trial or adoption?
Let’s look at some of the benefits of cloud adoption, categorized broadly into Flexibility,
Efficiency, and Strategic Value.

Cloud gives us flexibility.

Users can scale back or scale up services to fit their needs, customize applications,
and access cloud services from anywhere with an internet connection.
Cloud infrastructure scales on demand to support fluctuating workloads.
Organizations can determine their level of control with as-a-service options.
Users can select from a menu of pre-built tools and features to build a solution that
fits their specific needs.
And Virtual Private Clouds, encryption, and API keys help keep data secure.

Cloud also brings great efficiency.

Enterprise users can get applications to market quickly without worrying about underlying
infrastructure costs or its maintenance.
Cloud-based applications and data are accessible from virtually any internet-connected device.
Hardware failures do not result in data loss because of networked backups.

Cloud computing uses remote resources, saving organizations the cost of servers and other
equipment, and paying on use-basis.

Cloud services give enterprises a competitive advantage by providing the most innovative
technologies available while managing the underlying infrastructure, thus enabling organizations
to focus on their priorities.

While cloud brings great opportunity, it also introduces challenges for business leaders
and IT departments.
Some of these perceived risks include: Data security, associated with loss or unavailability
of data causing business disruption; Governance and sovereignty issues;
Legal, regulatory, and compliance issues; Lack of standardization in how the constantly
evolving technologies integrate and interoperate; Choosing the right deployment and service
models to serve specific needs; Partnering with the right cloud service providers;
Concerns related to business continuity and disaster recovery.

Organizations can no longer think of cloud adoption as something that is to be looked
at in the future.
With the right cloud adoption strategies, technologies, services, and service providers,
these risks can be mitigated.
In the next training, we’re going to look at some of the key cloud service providers
of our times, and the services they offer.

##### Key Cloud Service Providers and Their Services

Let’s look at some numbers and predictions that help us see the scale cloud is predicted
to achieve in the coming years.
Gartner predicts: The worldwide public cloud service market
to grow from $182.4 B in 2018 to $331.2 B in 2022, attaining
a compound annual growth rate (CAGR) of 12.6%.

Spending on Infrastructure-as-a-Service to increase from $30.5 B in 2018
to $76.6 B in 2022, growing 27.5% in a year.

Platform-as-a-Service spending to grow from $15.6 B in 2018 to $31.8B
2022, growing 21.8% in a year.
With software investments shifting from cloud-first to cloud-only, spending on Sofware-as-a-Service
is expected to grow from $80 B in 2018 to $143.7 B in 2022.
What is clear is that cloud is accelerating faster than predicted, adoption is high, and
revenues are soaring.

The question for businesses today is no longer “if” they need to adopt the cloud, rather
“what” their cloud adoption strategy should be to best serve their businesses and customers.

Keeping up with this technological wave, and driving it forward, are the Cloud Service
Providers with a wide range of services.
We will now talk about some of the major Cloud Service Providers in alphabetical order.

Alibaba Cloud, also known as Aliyun, while relatively new, is the largest Chinese cloud
computing service provider.
Aliyun provides a comprehensive suite of global cloud computing services to power not just
their customers’ online businesses but also the Alibaba Group’s own e-commerce ecosystem.
It offers a host of products and services such as compute, network, storage, security,
monitoring and managing, communication, analytics, IoT, application development, data migration,
web hosting, and more.

One of the first to enter the cloud computing space, Amazon Web Services, or AWS Cloud,
offers an extensive range of Infrastructure and Platform services to individuals, companies,
and governments on a metered pay-as-you-go basis.
The Amazon Cloud provides a wide range of products, services, and solutions ranging
from Compute, DevOps, Data, Analytics, IoT, Machine Learning, Networking, Content Delivery,
Robotics, Serverless Computing, and much more.

Google Cloud Platform, or GCP, is a suite of cloud computing services, providing Infrastructure,
Platform, and Serverless Computing environments.
Google also uses GCP internally for their end-user products such as Google Search and
YouTube.
Google Cloud includes G Suite with products for communication, productivity, collaboration,
storage, and more.
The Google App Engine is a platform for developing and hosting web applications in Google-managed
data centers, automatically allocating and de-allocating resources to handle demand.

IBM cloud is a full stack cloud platform that spans public, private, and hybrid environments
with products and services covering compute, network, storage, management, security, DevOps,
and databases.
Some of their prominent offerings include their Bare Metal Servers, VMWare, Cloud Paks
for Application Modernization, Virtual Private Cloud, and the suite of emerging technologies
such as AI, IoT, Blockchain, Data and Analytics.
With the acquisition of Red Hat, IBM is also positioning itself as the leading hybrid cloud
provider of our times.

Microsoft Azure is a flexible cloud platform for building, testing, deploying, and managing
applications and services through Microsoft-managed data centers.
With its data centers spread out in many regions, Azure provides a global reach with a local
presence.
It provides Software, Platform, and Infrastructure services supporting Microsoft-specific and
third-party languages, tools, and frameworks.

Oracle Cloud is primarily known for Software as a Service and Database as a Service (also
known as the Oracle Data Cloud).
Oracle’s SaaS offering includes wide-ranging applications such as ERP, SCM, HCM, Marketing,
Sales, and CX running in the cloud.
And the Oracle Data Cloud provides one of the largest cloud-based data management platforms
helping customers personalize their online, offline, and mobile marketing campaigns, for
targeted audiences.
Oracle Cloud also provides some cloud Infrastructure and Platform services.

Salesforce specializes in their Software as a Service offering that focuses on customer
relationship management, supporting businesses to better connect with their customers, partners,
and potential customers.
Salesforce offers multiple cloud services such as Sales Cloud, Service Cloud, and Marketing
Cloud, helping customers track analytics in real-time, customer success and support, customer
complaints, even listening in to customers across social platforms to automatically route
them to appropriate agents for resolution.

SAP is known for Enterprise software and applications such as ERP, CRM, HR, and Finance, running
in the cloud.
There is also an SAP Cloud Platform for building and extending business applications with rapid
innovation cycles in a secure cloud computing environment managed by SAP.
In the next video, we’re going to look at the business case for cloud computing.

[^^^](#IBM_CLOUD)

---

[^^^](#IBM_CLOUD)

---
