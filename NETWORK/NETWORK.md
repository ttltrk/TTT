
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### NETWORK

---

- What is SSH and why is it used?

The Secure Shell (SSH) protocol is a method for securely sending commands to a computer over an unsecured network. SSH uses cryptography to authenticate and encrypt connections between devices.

- What is SSL and why it is used?
SSL: Secure Sockets Layer

SSL is standard technology for securing an internet connection by encrypting data sent between a website and a browser (or between two servers). It prevents hackers from seeing or stealing any information transferred, including personal or financial data.

- What is SSO and how it works?

What is single sign-on (SSO)? Single sign-on (SSO) is a technology which combines several different application login screens into one. With SSO, a user only has to enter their login credentials (username, password, etc.) one time on a single page to access all of their SaaS applications.

- What is SFTP and why it is used?

SFTP, or Secure File Transfer Protocol, is a secure file transfer protocol that uses secure shell encryption to provide a high level of security for sending and receiving file transfers.

---

* [NETWORK_FLASH](https://github.com/ttltrk/TTT/tree/master/NETWORK/NETWORK_FLASH/NETWORK_FLASH.md)

---

* [SWITCH](#SWITCH)
* [ROUTER](#ROUTER)
* [INTERNET](#INTERNET)
* [CONNECTING_TO_THE_INTERNET](#CONNECTING_TO_THE_INTERNET)
* [WAN](#WAN)
* [WHAT_IS_THE_ROUTER](#WHAT_IS_THE_ROUTER)
* [ISP](#ISP)
* [LAYER_1_DEVICES](#LAYER_1_DEVICES)
* [LAYER_2_DEVICES](#LAYER_2_DEVICES)
* [LAYER_3_DEVICES](#LAYER_3_DEVICES)
* [SECURITY_DEVICES](#SECURITY_DEVICES)
* [OPTIMIZATION_AND_PERFORMANCE_DEVICES](#OPTIMIZATION_AND_PERFORMANCE_DEVICES)
* [VPN](#VPN)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### SWITCH

- using switch for connect pcs
- cat5, cat6 cable
- optic cable is much faster then copper cable
- we always use cables to connect comps to the switch
- a switch cannot use wireless technology
- if you want the devices in the same env to be connect to each other over wireless technology,
you should use an Access Point

```
Access Points >> wireless
Switches >> Cables
```

- LAN = Local Area Network
- A LAN is a computer network that connects computers within a restricted area such as a residence, school or office
- switch devices have LAN ports
- the pcs are communicating between each other with packets

[^^^](#NETWORK)

---

#### ROUTER

```
the main task of the router is to enable computers to connect to the internet  
```

- a special cable comes to our house and we connect to the internet by using this cable
- this cable is given to us by the ISP (Internet Service Provider)
- there is definitely no need for a router for devices in the same LAN to communicate
- either a switch or an access point device is sufficient for this purpose

```
the device that delivers the packets from the LAN to the internet is the router
```

[^^^](#NETWORK)

---

#### INTERNET

```
the internet is the network of networks
```

```
Connecting to the internet can stand for connecting to the another computer in anywhere in the world
The structure that connects all LANs in the world is the internet
```

```
A home-router is a combo device that is a mixture of router and switch
Most home-routers nowadays also have an access point feature. In this way, you can use wireless technology as well if you want.
```

- if we give entire the load to the single point, we call this problem 'Single Point of Failure'
- mess is minimized since not many cables are connected to routers in the distributed structure
- all the underwater cables are fiber optic cables  
- each router must have a special table called 'routing table', this table tells us which route the packet should choose

```
forwarding

the router learns the packets destination then it looks at the routing table and learns over
which port the packet will be sent
```

```
routers have a special processor inside. these processors create routing tables by using
special algorithms
```

```
congestion control

- a router always wants to deliver the packet to its destination in the fastest way possible  
- when routers create their routing table, they are not only concerned with the number of points
in order to choose the shortest route
```

[^^^](#NETWORK)

---

#### CONNECTING_TO_THE_INTERNET

```
streaming

when you watch a video on youtube, youtube sends the video to you piece by piece  
```

- servers have to be much powerful than normal computers in terms of hardware
- servers are distributed around the world and you communicate with the most suitable
server for you

[^^^](#NETWORK)

---

#### WAN

```
WAN = Wide area network
```

```
thanks to WAN, we can ensure that LANs located in different parts of the world
communicate as if they were in the same environment
```

```
there is always a possibility that a packet on the internet could be seen or modified
by others
```

```
VPN = Virtual private network
```

```
VPN tunnel

the tunneling feature of the VPN provides us privacy, anonymity and security on the internet  
tunneling just represents high-security communication between two locations  
```

- VPN tunnel does not represent the transmission of the packet through a physical tunnel

```
encryption + encapsulation = tunneling is a special encapsulation method
```

```
end to end encryption = between endpoints
```

[^^^](#NETWORK)

---

#### WHAT_IS_THE_ROUTER

- we can create a single LAN by connecting 2 switches together  

```
CAN = Campus area network

this is a special type of LAN
```

- LAN is more secure than VPN

```
Private WAN = ISP WAN dedicated line  
```

```
LAN >> Switches
WAN >> Routers

we cannot create a WAN using a traditional switch device
```

```
the main task of the routers is connect different networks
the location of these networks doesn't matter
```

[^^^](#NETWORK)

---

#### ISP

```
ISP (Internet Service Provider) represent companies that enable us to connect
to the internet for money
```

```
POP = Point of presence

in a POP there can be routers, switches, servers and so on
```

```
Local ISPs connect neighborhoods
Regional ISPs connect cities in a country  
```

```
Network of a country = Local ISPs + Regional ISPs
```

```
the ISP that connects different countries is the Global ISP
```

```
1. user send a request message to the server
2. server send a response message to the user

this process happens again every time you refresh the page
```

```
Peering

1. thanks to peering, google establishes an almost direct connection with the user
2. due to the direct connection, the packet passes through much less POP  
```

- Internet exchange point is the structure that enables the Internet backbone to work synchronously

[^^^](#NETWORK)

---

#### LAYER_1_DEVICES

```
OSI = Open System Interconnection  

OSI reference model

Layer 7 - Application
Layer 6 - Presentation
Layer 5 - Session
Layer 4 - Transport
Layer 3 - Network
Layer 2 - Data Link
Layer 1 - Physical   
```

- Analog modem

```
modem = modulator/demodulator

modems were developed to take the digital signal coming from a digital node and
convert it to an analog signal (modulating the signal) to be placed on the wire.
In return, it would accept an analog signal from the wire and convert it to a
digital signal that the node could understand.

They were developed to create connections between network segments via the public switched telephone network (PSTN)
using the plain old telephone system (POTS)
```

- Hub

```
a hub functions as a concentrator/repeater in that it doesn't care where the signal comes from or where it is going
it takes the electrical signal that arrives on a port and replicates that signal out all of the other ports
```

[^^^](#NETWORK)

---

#### LAYER_2_DEVICES

- Switch

```
A switch utilizes an application specific integrated circuit (ASIC) chip
  - the ASIC chip has specific programming that allows the switch to learn when a device is on
  the network and which ports it is connected to via that device's Layer 2 MAC address

A switch will only communicates with the local network devices
```

- WAP (Wireless Access point)

```
A WAP is a specific type of network bridge that connects (bridges) wireless network segments with wired network segments.  
the most common type WAP bridges 802.11 wireless network segments with 802.3 Ethernet network segments
A WAP will only communicates with local network devices
```

[^^^](#NETWORK)

---

#### LAYER_3_DEVICES

- MLS

```
MLS = Multilayer switch

an MLS provides normal Layer 2 network switching services, but it will also provide Layer 3 or higher OSI model services
the most common MLS is a Layer 3 switch
```

- Router

```
a router is a most common network device for connecting different networks together utilizing the OSI models Layer 3
logical network information
the router uses software programming for decision making as compared to the switch's use of an ASIC chip
a router can communicate with both local and non-local network devices
```

[^^^](#NETWORK)

---

#### SECURITY_DEVICES

- Firewall

```
- A firewall can be placed on routers or hosts (software based) or can be its own device
- It functions at multiple layers of the osi model (2, 3, 4, 7)
- It blocks packets from entering or leaving the network:
  - via stateless inspection:
    the firewall will examine every packet against a set of rules.
  - via stateful inspection:
    the firewall only examine the state of the connection between networks. Specifically, when a
    connection is made from an internal network to an external network.  
    As a general rule, external connections are not allowed to be initiated with the internal network.
```

- IDS

```
IDS = Intrusion detection system

- An IDS is a passive system designed to identify when a network breach or attack against the network is occuring.
Usually designed to inform a network admin when a breach or attack has occurred through logs/sms/mail.

- An IDS cannot prevent or stop a breach or attack on its own.
- It receives a copy of all traffic and evaluates it against a set of standards
    - Signature based:
      evaluates network traffic for known malware or attack signatures
    - Anomaly based:
      evaluates network traffic for suspicious changes
    - Policy based:
      evaluates network traffic against a specific declared security policy

- May be deployed at the host level (HIDS)
```

- IPS

```
IPS = Intrusion prevention system

- An IPS is an active system designed stop a breach or attack from succeeding in damaging the network
- All traffic on the network segment flows through the IPS to either enter or leave the segment
- The best placement on the network is between a router and a destination network segment  
```

- VPN

```
VPN = Virtual private network

A VPN concentrator will allow for many more secure VPN connections to a network.
The concentrator will provide proper tunneling and encryption, depending on the type of VPN connection
that is allowed. Most concentrators can function at multiple layers of the OSI model (L2, L3, L7)
Outside of internet transactions (which use ssl vpn connection at L7) most connectors will function
at the network layer (L3) of the OSI model, providing IPsec encryption through a secure tunnel.
```

[^^^](#NETWORK)

---

#### OPTIMIZATION_AND_PERFORMANCE_DEVICES

- Load balancer

```
- A load balancer may also be called a content switch or content filter
- A network appliance that is used to load balance between multiple hosts
that contain the same data spreading out the workload for greater efficiency.
```

- Proxy server

```
- A proxy server is an appliance that requests resources on behalf of client machines.
- It is often used to retrieve resources from outside untrusted networks on behalf of the
requesting client.
- It hides and protects the requesting client.
```

[^^^](#NETWORK)

---

#### VPN

```
VPN = Virtual Private Network

A VPN is used by remote hosts to access a private network through an encrypted tunnel
through a public network.

Once the VPN connection is made, the remote host is no longer considered remote. It is
actually seen by the private network as a local host.
```

[^^^](#NETWORK)

---
