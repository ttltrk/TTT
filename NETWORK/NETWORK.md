
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### NETWORK

---

* [SWITCH](#SWITCH)
* [ROUTER](#ROUTER)
* [INTERNET](#INTERNET)
* [CONNECTING_TO_THE_INTERNET](#CONNECTING_TO_THE_INTERNET)
* [WAN](#WAN)
* [WHAT_IS_THE_ROUTER](#WHAT_IS_THE_ROUTER)
* [ISP](#ISP)
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

[^^^](#NETWORK)

---
