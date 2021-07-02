
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
* [MODULE_2_CLOUD_ADOPTION_EMERGING_TECH](#MODULE_2_CLOUD_ADOPTION_EMERGING_TECH)
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

#### MODULE_2_CLOUD_ADOPTION_EMERGING_TECH

##### No Longer a Choice

Cloud adoption is no longer a thing of the future.
From a single individual to a global multi-billion-dollar enterprise, anybody can access the computing
capacity they need on the cloud.
The lag time from decision to value is no longer a journey of years with high upfront
capital; cloud makes it possible for businesses to experiment, fail, and learn much faster
than ever before, with low risk exposure.

Businesses today have greater freedom to change course than to live with the consequences
of expensive decisions taken in the past.
According to an IBM Institute for Business Value study, more than three-quarters of enterprises
today are using cloud computing to expand into new industries.

74% have adopted cloud to improve customer experience; and 71% use cloud to create enhanced
products and services—while simultaneously downsizing legacy systems and reducing costs.
To remain competitive, businesses need to be able to respond quickly to marketplace
changes, use analytics to understand customer experience, and apply that understanding to
adapt their products and services based on what they learn.

Product lifecycles have shortened, and barriers to entry have become lower.
Today’s enablers for growth, agility, and innovation include:

Cognitively-enabled workflows, Applied exponential technologies such as AI, Automation, IoT, and Blockchain,
Applications that span new and legacy solutions; and dOpen hybrid and secure Multicloud infrastructures.

The power, scalability, flexibility, and pay-as-you-go economics of cloud provides the foundation
for this transformation.

The International Data Corporation, IDC, predicts that by 2025, the total amount of digital
data created worldwide will rise to 163 zettabytes (where one zettabyte is equivalent to a trillion
gigabytes).
And 30% of this data will be real-time information.

Considering the unprecedented amounts of data being produced daily, and the ability to make
data-driven decisions crucial to any business, cloud computing becomes essential for businesses
to succeed, sustain, and compete in today’s markets.
A cloud strategy, more than just an IT strategy, is the core component of any business strategy
today.

Businesses that haven’t already, or are not currently, integrating cloud into their
business strategy, run the risk of lacking the speed, agility, innovation, and decision-making
capacities needed to be competitive, as also their ability to respond to digital disruption.
In the next video, we’ll look at some case studies that demonstrate the impact businesses
have created by adopting cloud.

##### Some Case Studies

In this video, we will look at how some of the leading businesses have transformed the
way they work to provide better customer service, remove barriers to innovation, achieve enterprise
scale, and accelerate growth, using cloud technologies.
Although the case studies we’ll look at are curated from IBM Cloud, similar stories
with dramatic impact to business can be found across the spectrum of companies utilizing
other Cloud Service providers as well.

- BETTER CUSTOMER SERVICE: In the highly competitive airline industry,
customer experience is a major point of differentiation, and digital channels are increasingly important.
To become more responsive to customer needs, American Airlines needed a new technology
platform and a new approach to development that would help it deliver digital self-service
tools and customer value more rapidly across its enterprise.
The airline recognized the opportunity to remove the constraints of their existing customer-facing
applications based on monolithic code into cloud-native based microservices architecture
on the cloud.

- The results: Faster development and release of new apps.
Improved operational reliability, productivity, and end customer response times.
Cost savings by avoiding existing upgrade costs via migration to the IBM Cloud.

- REMOVING BARRIERS TO INNOVATION: As a lean organization with a self-imposed
limit on headcount, UBank excels at finding innovative ways to meet demands.
Continually challenged to find more efficient ways to operate, UBank’s IT team explored
a Platform as a Service (PaaS) cloud development model.
Their need was to give more control to their developers, reduce the need for additional
resources, faster speed to market, and removing barriers in going from an idea to production.
UBank launched new initiatives in an IBM Cloud Platform environment, including a virtual
assistant that incorporates IBM Watson technology to support the bank’s online home loan application.

- The results: Faster time to market made possible through
the Cloud Platform framework that streamlines development and empowers product teams.
Foster greater innovation with cloud-based development resources that are quick, easy,
and cost-effective to deploy.

More efficient operations.

- DEMAND FOR ENTERPRISE SCALE: Since its inception in 2008, Bitly has journeyed
from a startup that offered intelligent link-shortening technology adopted by users to compress lengthy
URLs for social media posts, to an enterprise product.
Seeking an agile, cost-effective IT infrastructure to support this transition, Bitly started
planning for cloud migration.
Their need was to have a cloud-based model with pay-as-you-go pricing, the ability to
scale up and scale down, a more global presence, and the ability to geodistribute into more
POPs.
And they wanted it to be low-risk.
Bitly migrated to an IBM Cloud environment, establishing a scalable hosting platform for
low-latency delivery to enterprise customers around the world.
The results: 25 billion data-infused links migrated from
one hosting site to Cloud infrastructure with data center locations worldwide.
1 billion user interaction data set stored and managed in a flexible, cost-effective
Cloud Object Storage environment.
Transformed IT operations to scale for growth, control costs and focus valuable resources
on new product development.

- ACCELERATING GROWTH: Financial traders demand extreme speed and
availability from trading systems.
Profitability depends on split-second decisions.
As a leading online broker in forex, commodities, equities, cryptocurrencies, indices, and other
financial instruments, ActivTrades enables investors to buy and sell on numerous financial
markets.
Investors need reliable access to accurate market information, combined with the ability
to move rapidly to execute trades.
As its client base grew, ActivTrades wanted to cut latency, accelerate execution, and
streamline the delivery of new functions.
ActivTrades migrated three major trading systems from on-premises infrastructure to IBM Cloud
for VMware solutions, backed by data storage, networking, and security offerings on the IBM Cloud.

- The results: Up to 3X performance boost, helping clients
seize fleeting opportunities for profit.
Security-rich cloud platform with ultra-high availability protects client investments.
Hours, not days to fire up new resources, for faster response to emerging requirements.

##### Internet of Things in the Cloud

In this new era technologies such as Internet of Things, Big Data, artificial
intelligence, and blockchain are disrupting existing business models and
industries while creating unprecedented opportunities for businesses to
differentiate themselves and create value for their clients.

The power, scale, dynamic nature, and economics of the cloud resources make cloud computing a
key enabler for adoption and evolution of these emerging technologies.

The Internet of Things, or IoT, is a giant network of connected things and people that have changed much of how we
live our daily lives - from the way we drive, to how we make purchases,
monitoring our personal health, and even how we get energy for our homes. Smart
devices and sensors are continuously tracking and collecting data. For example,
a smart building could have thousands of sensors measuring all kinds of data
related to thermal, optical, structural, and environmental stimuli. An
unprecedented amount of data is being generated, putting a tremendous strain on
the Internet. That is where the cloud comes in, by
connecting the IoT device user to the cloud - be it for device registration,
device identity, storing data, or accessing enterprise data. Data collected
through IoT devices is stored and processed on the cloud since IoT devices
can be in a state of motion, the cloud serves as a collection point in closest
proximity, minimizing the latency in reporting up the data points and
providing a response back to the IoT application.
So, from IOT platforms running entirely on the cloud to the interfaces used by
customers to interact these devices, to the backend analytics
platforms - cloud computing supports and enables IoT.

Cloud service providers also offer specialized IoT services designed to help speed up the development of IoT
solutions. Let's look at a case study that demonstrates the use of the IoT on
the cloud to combat the poaching of endangered rhinos at Welgevonden by
making poaching predictable.

The rhinos have become one of the the key species that is becoming endangered due
to poaching throughout Africa. But now especially in South Africa.
Up until now, poachers have been increasing in numbers, and they become
more militarized with weapons. And so of course we've had to do the same. This is
not sustainable. The only way to do this better, is to bring in technology and
things that they do not have. This endangered species is getting help from
some unexpected friends, the zebra and antelope. They're wearing IoT sensors
connected to the IBM cloud. When poachers enter the area, the animals run for it,
which alerts Rangers who can track their emotions and help stop them before any
harm is done. It's a smart way to help increase the Rhino population and turn
the poachers into the endangered species.

##### Artificial Intelligence on the Cloud

Making sense of the endless streams of data is where Artificial Intelligence, or AI, comes
in.

Many of the applications where we apply AI today simply wouldn't have been possible without
the scalable, on-demand computing offered by the cloud.
There is a three-way relationship between AI, IoT, and Cloud.
Just as AI consumes the data produced by IoT devices, the IoT devices’ behavior can be
dictated based on responses from AI.

For example, Smart Assistants, a common type of IoT device, continues to learn about the
user’s preferences as usage grows, such as the songs they like, their home temperature
settings, preferred meal times, and over time they anticipate their actions based on the
user’s past history.

So, what we see is a symbiotic relationship between IoT, AI, and Cloud.

IoT delivers the data, AI powers the insights, and both these emerging technologies leverage
cloud’s scalability and processing power to provide value to individuals and businesses
alike.

Let’s look at how the United States Tennis Association, USTA, is using AI on the Cloud
to deliver unique digital experiences to millions of fans around the world.

For two weeks at the end of every summer, tennis fans around the world turn their eyes
to New York city, and the US Open.
Hundreds of thousands onsite, and millions more online.
But where you see tennis, IBM sees data;
the scores and statistics, the sights, the sounds.
IBM integrates and analyzes the data flowing from the court.
And delivers unique digital experiences to more than ten million tennis fans around the
world.
And we do it all in the IBM Cloud.
The IBM Cloud is the digital foundation of the US Open.
It scales rapidly to meet a five thousand percent increase in web traffic.
And it delivers a consistant experience to our fans all around the globe.
And with Watson on the IBM Cloud, we can engage fans in unique ways, year after year.
Slam Tracker analyzes more than twenty-six million historical data points.
It gives fans deep insight into featured matches, and it can see the momentum of a match shifting
in real time.
AI Highlights uses Watson to process thousands of hours of US Open video.
It can hear the cheers of the crowd.
It can see a player celebrating.
And it knows what makes a great tennis highlight.
And this year we're putting the power of AI Highlights into the hands of US players and
coaches.
Watson is analyzing match video,
so coaches can quickly find the footage they need to guide the development of their players.
And if you need to know where to park, find a good burger, or grab the latest US Open
gear, you can find the answers with the Guest Information feature in the US Open app
and mobile web, using Watson.
We work with IBM because they keep us on the cutting edge of the fan experience.
They help us to adopt the latest technology, like Cloud and AI.
And they bring data to life in a way that's accessible and engaging for our fans.

##### Blockchain and Analytics on the Cloud

Blockchain is a secure, distributed, open technology that can help speed up
processes, lower costs, and build transparency and traceability in
transactional applications.

It is an immutable Network allowing members to view only those transactions that are relevant to them.
The more open, diverse,
and distributed the network, the stronger the trust and transparency in the data
and transactions.

85% of businesses today rely on multiple clouds to meet their IT
needs, with more than 70% using more than three. These businesses need to be able
to move applications and data across multiple clouds easily and securely,
leading to the emerging demand to build and manage business applications such as
blockchain for the multi cloud environment. Blockchain and AI, much like
IoT and AI, powered by the cloud, also have a three-way relationship. Where
blockchain technology provides the trusted, decentralized source of truth, AI
powers the analytics and decision-making from the data collected, and cloud
provides globally distributed, scalable, and cost-efficient computing resources
to support both the unprecedented amounts of data being collected and the
processing power required to draw insights from this data. Blockchain
serves to make AI more understandable by recording the data and variables that go
into a decision made in an AI algorithm, leading to greater trust and
transparency in the conclusions and decisions made by these algorithms. Let's
look at how blockchain on the cloud is helping farmers reduce waste at times of
recall by building traceability and transparency in the food supply chain.

For farmers here, this is our life's work. 60% of the nation's lettuce is
grown right here in Salinas. When it comes down to how plants are looked at, I
really relate back to how humans are raised and nurtured. I want to make sure
that everything is safe before it leaves the ranch. But when a recall happens,
perfectly good food goes to waste. You have to take all product off your shelf,
no matter what age, no matter where it came from. And it takes resources to grow
those things. Now we're actually eating into our future food supply. But
we've gotta way around that. With Blockchain technology on the IBM cloud
we're able to track our product within seconds. Giving the consumers instant
access where the product came from, in case there's any recall so we don't
have to take all the food off the shelves.
Having that instant access allows you to reduce the waste. There's a lot of
starving people in this world. I want to be a generation that
fixes that.

Analytics technologies on the cloud leverage the flexibility, scalability, and
computing resources available on the cloud. From tracking trends on social
media to predict future events, to analyzing data to build machine learning
models that can be deployed in cognitive applications, cloud provides the
integrated environment that is required to leverage data for continuous
improvement and accelerated business growth. Let's look at how KONE has
invested in cloud and IoT technologies to power a data analytics and predictive
maintenance solution for city infrastructure used by more than 1
billion people daily.

At KONE we manufacture elevators, escalators, auto
walks, and doors All of these devices are streams of data that we are collecting.
In order to process those streams, we need a scalable way of handling the amount
of data that is coming in. And that's where cloud function fits in perfectly.
We handle that data with event-driven architecture. We use functions to persist
that data, and to generate further events on that data, that are then utilized and
consumed by applications, our customers and users. In our analytics
platform, we analyzed the set of data and we generate value predictive in a sense
that we can predict the failure rate to a certain percentage that is about to
happen in the future for our equipment. And this allows us to perform predictive
maintenance. And this is kind of the whole concept that we have behind our
24/7 connected services, which is a promise to our customers. That the
equipment is connected to the cloud and we are monitoring it. And that's where we
generate the real a value for our customers. At the
moment we use almost all aspects of the IBM cloud. We use storage from the cloud.
We use cloud function. We use messaging services. We
use IoT services. So a number of services already in use and platform. And that use
will only grow as our digital footprint in the industry grows.

##### Module 2 Summary

The adoption of cloud technologies is enabling enterprises, big and small, to be agile, innovative, and competitive, and to create differentiated customer experiences. The question organizations are asking is not whether they should move to the cloud, rather what strategy they should adopt to move to the cloud.


●       Some case studies that demonstrate the impact businesses have created by adopting cloud

    o   American Airlines adopting cloud technologies to deliver customer value rapidly across its enterprise

    o   UBank leveraging cloud platform services to give more control to their developers thereby removing barriers to innovation

    o   Bitly leveraging the scalability offered by cloud infrastructure for low-latency delivery to its geographically disbursed enterprise customers

    o   ActivTrades leveraging the infrastructure, storage, network, and security offerings on the cloud to accelerate execution and delivery of new functions in their online trading systems to their customers


●       Emerging technologies, powered by the cloud, are disrupting existing business models and creating unprecedented opportunities for businesses to grow, innovate, and create value for their customers.


●       Some case studies that demonstrate how the use of emerging technologies on the cloud is creating value for millions around the world.

    o   The use of the Internet of Things on the cloud to combat poaching of endangered rhinos in South Africa

    o   Artificial Intelligence on the cloud being leveraged to deliver unique digital experiences to millions of fans around the world by the United States Tennis Association

    o   Blockchain on the cloud helping farmers reduce waste by building traceability and transparency in the food supply chain

    o   The use of data analytics for driving predictive maintenance solutions for a city’s infrastructure by KONE

[^^^](#IBM_CLOUD)

---

[^^^](#IBM_CLOUD)

---

[^^^](#IBM_CLOUD)

---
