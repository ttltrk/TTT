
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [JV](https://github.com/ttltrk/TTT/tree/master/JV/JV.md)

---

### JAVA_EXPLORER

---

- [link](https://mylearn.oracle.com/ou/learning-path/java-explorer/79726)

---

- [1_OVERVIEW](#1_OVERVIEW)

---

#### 1_OVERVIEW

##### 1.1 - Title and Objectives

Welcome to the Java Basics learning path, where we introduce the world of Java and the fundamentals of Java programming. My name is Joe Greenwald. I'm a senior principal instructor and learning solution architect with Oracle University. My background is in model-based development, case tools, and object-oriented analysis and design programming.

I got my start with objects in the late '80s with Object Pascal-- some of you may remember Borland Turbo Pascal and Delphi products-- followed by Smalltalk and C++. I've been working with Java since it was first created and taught the first Java classes for Oracle University. I've been working with and teaching Java ever since.

Java is widely used in the industry, and learning Java is applicable to many different roles, not just the obvious developer and designer roles. All manner of tech folks can benefit from knowing Java-- support engineers, QA engineers, even administrators and architects. Also, proficiency with Java is a highly marketable skill. This learning path serves as an introduction to our Java learning subscription, which can be your one-stop shop for your Java education and training needs.

This learning path contains two parts. The first is an overview of the world of Java, and the second is a course to teach you basic programming skills in Java. Let's take a look at the objectives for the world of Java.

Our first objective is to become familiar with why Java was invented and the different ways that it is used, from smart cards to TVs to the enterprise. Then we'll briefly examine the structure of a typical Java program to see what it looks like. We'll also consider the Java design mindset. How do we design using object-oriented principles and Java features to increase code reuse and create code that is easier to maintain and extend?

We'll examine some of the more common Application Programming Interfaces, APIs, included with the Java Development Kit. These are libraries of classes that add functionality to our applications and make it easier to create robust, industrial-grade applications. And lastly, we'll look at how Java is used in the enterprise, which is where we see it used most often today.

I hope my experience and enthusiasm for Java is contagious, and you leave feeling entertained, enlightened, and eager to get started programming with Java. Let's get started.



[^^^](#JAVA_EXPLORER)

---

#### JAVA_ECOSYSTEM

```
- Java Card
- Java ME Micro-Edition
- Java SE Standard-Edition
- Java MP Micro-Profile
- Java EE Enterprise-Edition
```

---

#### JAVA_IS_CROSS_PLATFORM

```
- Each Java Program only needs to be written and compiled once.
- No platform-specific changes has to be applied to the source-code.
- A single, compiled version of a program can run on any platform.
- Java Programs are executed within a Java Virtual Machine (JVM)
```

---

#### JAVA_LANGUAGE

```
Class
  - Basic unit of code
  - Describe data and logic of your program

Package
  - Intermediate logical code aggregation
  - Group of classes

Module
  - High-level physical code aggregation
  - Group of packages
```

```
- Java code is grouped into a classes.
- Classes contain methods and variables that fulfill their purpose.
```

---

#### JAVA_DESIGN

```
- A class represents a type of thing or a concept.
- An object is an instance - aspecifi example of a class.
```

- Reusing Code Through Inheritance

```
- reuse (inherit) attributes and
behaviors across the class hierarchy.

- top-level classes contain
generic code reused by their
descendants.
```

- Use Unified Modelling Language (UML)

```
- Analyze business requirements
- Model code structures
- Describe application deployment
```

---

#### JAVA_APIs

```
- An array is a simple group of elements.

- the collection API provides more flexible
capabilities for managing groups of elements.
    - ArrayList
    - LinkedList
    - Set
    - Stack
    - Queue

add, update, remove, search, rearrange
```

---

#### OOP_CONCEPTS


Welcome to Practical Object-Oriented Concepts Part 1. My name is Joe Greenwald. I'm a Learning Solutions Architect, Curriculum Developer, and Senior Instructor with Oracle University. I've been teaching and consulting for Oracle since 1992. I've been using object-oriented software since the late 1980s, starting with Borland's Turbo Pascal and Delphi, and then moving on to Smalltalk, C++, Java, and C Sharp, amongst others.

I wrote these materials over many years, trying to simplify and distill the essence of what is object-oriented software development. I hope you enjoy watching this presentation as much as I did in writing it and recording it. In this presentation, I will define what is an object, a class, an attribute, a method, and a message, and how they're used in object-oriented programming. I'll also talk about what it means to create an object-oriented application and the benefits, advantages, of object orientation itself.

I think it's both interesting and helpful to understand why object-oriented programming was developed, what problems it tries to solve, and why does it look the way it does. So let's get in our wayback machine and go all the way back to the late '60s and early '70s and look at the computing environment at that time. At that time, software was basically monolithic. It was mainframe code typically using punch cards or tape. Terminals were just becoming popular at the time.

COBOL, common business-oriented language, was there for the business folk to write business applications. FORTRAN, formula translation, was available and used by scientists and mathematicians, and assembler was used by the true computer geeks. Languages like Pascal and C, whose syntax are derived from the parent language ALGOL, were gaining in popularity.

Pascal, named for the mathematician Blaise Pascal, was created by Niklaus Wirth and remains one of the best languages to teach beginning programming. C was also becoming popular because it was small, compact, fast, essentially a verbose assembler-type language, and it was used to write the Unix operating system. There was very little programming discipline or structure at the time.

Goto-less programming, structured programming, modular programming, procedural programming-- those sorts of things were years off for mainstream coders. Mostly it was seat-of-the-pants coding. You'd start writing some code and hope it works and then add to it. Also, writing the entire program at once and then going back to test it little by little was popular, as well, if more frustrating and time-consuming.

In the early 1970s, computer pioneers at the Xerox Palo Alto Research Center, called Xerox PARC, were developing a single-use computer with a graphical user interface. This was a computer that can be used by a single person at a time. It was dedicated to that one person. The person had their own dedicated computer, CPU, memory, storage, monitor, and input devices like keyboards and mice.

While mainframe users did share the computing resources with others, the sharing could be transparent when things went well, or in some cases not so transparent. For example, when the mainframe went down and crashed or was unavailable, it went down for everyone. Even years later, I remember my mentor at the time bragging about a new mainframe operating system that he was using that was like a virtual operating system, where it made it look like each user had their own disk, storage, memory, and CPU. And I said, "You mean like my PC?" at the time.

However, back at Xerox PARC, they were developing and using this amazing, for the time, new box. One was called the Star and the other was called the Altos-- what was effectively the first personal computers with a graphical user interface and a mouse-- and they wanted to move away from the monolithic, text-based development mechanisms of the time and create a more flexible environment. They wanted this development, environment, and language to be more suited to a graphical user interface-based personal computer. Remember, this is many years before Macintosh came out.

One of their lead pioneers, Alan Kay, proposed the idea of individual entities or cells communicating with each other using a very simple syntax and passing messages to each other to make the entity cells do things. This development system, called Smalltalk, was a huge departure from the current mainframe programming systems at the time. It was designed to be simple and easy.

For example, Alan Kay was challenged to write the entire syntax of the Smalltalk language on a 3-inch by 5-inch card, and he was pretty much able to do that. And it should be easy enough for kids to use. Indeed, the first versions were tested with local high students in and around Palo Alto.

Years later, in the early '90s, I actually met one of these "Alan Kay's kids," as they were called. I was working in Silicon Valley and working with Smalltalk, and he was at a Smalltalk library for graphical interfaces that I had purchased, and I got to meet him and work with him and talk with him. I heard some amazing stories from him working with PARC and Alan Kay at the time. He'd started programming in Smalltalk at about the age of 13 and he was something like 26 when I met him. So imagine working in something like Smalltalk at that age and for the next 13 or 14 or 15 years. I learned a lot from him.

Alan Kay took as inspiration aspects of the earlier simulation language called Simula and extended it to the idea that everything was an object and all computation would be done by passing messages. Alan Kay took as an inspiration aspects from the earlier simulation language called Simula and extended it to the idea that everything was an object and all computation was done by passing messages. We'll talk more about these ideas later on.

One interesting note-- Alan Kay developed the idea for what he called a Dynabook back in the mid-'70s, which would look very much today like our iPads and tablets that we use. And he developed this as a way to bring new ways of thinking to human civilzation and amplify human reach. He also worked on a free, open source version of Smalltalk, which you can obtain today, called Squeak. You can find it at S-Q-U-E-A-K.org, squeak.org. I highly recommend trying it out and seeing what Smalltalk looks like. For myself, learning Smalltalk made be a much better object-oriented programmer, just as learning assembler made me a much better overall programmer.

So Alan Kay's Vision, his idea was that he thought of objects being like biological cells or individual computers on a network only able to communicate with messages. Think today of things like web services, SOAP or REST web services. So his idea of messaging, passing messages from one object to another, came at the very beginning. It took him a while to see how to do messaging in a programming language efficiently enough to be useful.

Now, if we see here, we see a common representation of an object. The internal state of the object, the data that represents the state of the object, is hidden and encapsulated and cannot be directly manipulated by other objects. One object sends a message to another object to make it do something. Then another object can send a message, and you get this message passing going back and forth. Initially, of course, these object systems were all in one memory space within a computer, but it easily extended out to multiple different memory spaces across different machines, very similar to what we have in terms of web services today.

---

#### USING_OO

Using Orientation-Orientation-- object-oriented programs are modular with a code for one type of object isolated from other objects. So changes to one object won't necessarily break other objects in the program. For example, if you have an order object and an item object, the code for the order object is in one definition, and the code for the item object is in another. Changes to the order object won't necessarily break the code in the item object.

Also, this modularity makes it easier to find and fix bugs as well as making changes to functionality or adding new functionality. If I want the order to do something new, I know to go to the order object and make the change there. Also, object-oriented programs tend to be more flexible because the same message sent to one object could cause different behavior when it's sent to a different object. For example, if I send the message, print, to the order object, it would behave differently than if I send the message, print, for example, to a catalog object.

It's also easier to reuse code by identifying common behaviors and data among members of different, but related classes. This is something called inheritance, and we'll look at this later. Many of these benefits come through during maintenance and enhancement and not as much during the initial application development. And object-oriented programs tend to be more verbose than when using languages like C.

And since object-oriented applications manage their own memory allocation and de-allocation through something called garbage collection, historically, there's been a slight impact on performance of the code over a compiled language. However, these performance differences are really not significant any longer given just-in-time compilers and much faster computers. So what is this object-oriented stuff about anyway?

Object orientation is about simulating the real world in a computer. In the real world, we interact with objects every day without thinking about how they work or why. We just know how they work. And when we tell someone or something to do something by sending them a message, they would do it, mostly. For example, if we were going to implement a dog object in an application, what would that dog be able to do, and what would the dog be able to know?

The dog has behaviors, what it can do, and it would have an internal state, what it can know. Behaviors for the dog would include things like eat, sleep, speak, chase cars, walk, and fetch a toy. However, behavior like calculate bank balance is not typically a behavior that we would ascribe to a dog.

It doesn't do it in the real world and probably wouldn't do it in the computer program either. It's internal state, what the dog would know about itself, could include things like its name, its weight, the number of bones its varied, its favorite toy, its owner, and the date of its last meal. So dogs, like all things, have behavior and would know about their internal state.

When we interact with dogs, we would send a message to the dog and ask it to do something. Now, we don't know how it does what we ask it to do. And nor do we, as users of that thing, or interacting with that dog do we really care.

For example, here, the dog's name is Bowser, and we get his attention, and say, Bowser, speak, Bowser, walk. And Bowser would receive the message, speak or walk, and then Bowser, the dog, is going to collaborate with other parts of the dog to carry out that message.

For example, the message walk could result in a message of, step, pass to its legs or paws, and each paw would get a message of lift. So there's a collaboration that occurs within the object itself. So objects are responsible for doing things.

Objects then collaborate with other objects to perform tasks. And objects use their internal state to carry out the behavior. So in an object-oriented fashion, we would have the object dog. The dog would have paws. And the paw would know how to lift and take a step.

So let's see how we solve a problem using objects. Using objects, we start with a use case. We start with a problem domain-- what problem are we trying to solve? We'd like to have a dog fetch and play with a toy. So we would write the use case by saying, the owner asked the dog to fetch the toy. After the dog has fetched the toy, the dog plays with the toy. Now, this is a stunningly simplistic example. And of course, things get more complex. But the basic truth is here.

This scenario is called a use case, and it is where object orientation starts. A use case would describe the objects that are used to create the application. What are we working with? It also describes the messages, the behavior, that an object understands. So for example, what things you typically work with in this use case-- take a look at the picture, and think about the things that would be involved in this use case.

What did you come up with? In the domain for a dog, we would say that we have dogs, owners, and dog toys. Dogs play with dog toys. Owners interact with dogs. Now, we also can say that objects "know" things. And notice that "know" is in quotes here. And the reason for that, there's an anthropomorphic aspect to this. And we talk about this in objects, like, if the object was alive and could actually respond, how would it actually respond to what would it do?

For example, each object knows its name and other internal information about itself. Here, we see three dog objects, one dog whose internal name is Bowser, another dog whose internal name is Kayla, and another dog whose internal name is Matty. The owner is a separate object and would have their own internal state.

Since each object is different, it has its own individual data and state. The values of the name may be different for each dog object. So while each dog has a name, the actual value for the name would be different, and each object would therefore be different.

This anthropomorphic use of "know" is intentional, since we're simulating real-world objects and making believe like they're actually alive. And this is actually how I program and how I teach my students to do object-oriented programming. Imagine the objects were alive and they could respond to messages. How would you actually write them, and what could they do? And how would they work together and collaborate?

For example, we have a use case, and we'd start by the owner sending a message to the dog to fetch a toy. So the owner sends the message, fetch a toy, to the dog Bowser. Bowser would then send a message that it wants to play with that toy by going out and fetching the toy to play with it. So Bowser would play with a ball or play with a squeaky toy or play with a chew toy.

So now we're seeing three different types of toys in this case, a ball, a squeaky toy, and a chew toy. And while they have certain behaviors and internal states that are common between them-- they'd have a name and a type-- they could also have things that are different. For example, a squeaky toy would make a sound. And a chew toy would be able to be chewed, for example. And a ball could be bounced.

So the dog would fetch the toy, and then the dog plays with the toy. Again, this is very simplistic, but it's not actually all that far-fetched. You could easily see a situation where a customer sends message to an order to add an item to an existing order. And the dog object can have different behaviors in different applications, what we'd say different problem domains.

In one application, we ask the dog to fetch a toy. In another application, we asked the dog to eat at regular intervals. In a different application, we could ask the dog to walk a specified distance. Again, this is one of the benefits of object orientation. The same object can be used in different applications in different ways, but it gains new behaviors and, therefore, new value over time.

Now, so far, we've been looking at objects and how they're used by the user of the object. But of course, clearly, inside of a program, at some point, we have to write code to make the object work. And this is the designer's view. The designer uses variables, typically other objects, to represent the dog object's state.

For example, a string object called name would store its name, in this case, the letters that make up the word Bowser. And a number object would have a weight, in this case, 52.5. And a toy object would have a favorite toy, which would be a value a squeaky toy. So a dog object could have a favorite toy, and it would be a squeaky toy, or it could be a chew toy.

Now, what happens if we decide to change our implementation and use a different variable name or represent the name differently or represent the weight differently? Or let's say we read it from a database or a web service? What would happen in that case?

Well, if the implementation, that is the data structure storing the state, and the algorithm which carries out the behavior, is visible to the user of the object, if either the user or the dog could actually see how the name field is actually coded, then every place that referred to the dog's name variable would have to be changed, recompiled, and debugged in my program.

That's a side effect and also something that we would call strong coupling. One use of an object is coupled to its implementation, and the change of the implementation breaks the use of the object. That's not a good thing.

However, if the implementation, the data structure, and the algorithm is hidden from the user, and if the implementation changes, the user of the object is not impacted. So for example, I would, using the dog object, I could ask the dog what its name is. And it would tell me what its name is.

But I don't know how the dog object is implemented internally. And I can't write code that's dependent on that implementation. Therefore, this is more flexible. And the designer can change the internal implementation of the dog object without breaking my application that's using the dog object.

Now, we'll look at procedural programming first to compare it with object-oriented programming. Procedural programs, like for example C, Pascal, or PL/SQL put the data structure that defines the data into the main program. Here, for example, the main program would define a dog having a name, a weight, and a favorite toy. And then we could create dogs based on that structure.

Separate from the main program, in a separate file, we would see that the function or procedures that actually carry out the behavior are stored. So here, for example, we have a compare function. If we pass it dog1 and dog2, it'll compare those two dogs and give us an answer back.

Of course, the problem arises, what happens if we decide to change the data structure for a dog, and now we say dogs have names, weights, favorite toys, and something else? Well, this whole main program, and actually everywhere that the dog is defined, all of the programs would have to be recompiled and retested.

The problem is more evident with databases. Here, we have multiple programs all referencing a table. The table has columns and they're referencing the columns directly inside the code of the application. Well, what happens now if that table structure changes, if we change the spelling of the column or get rid of the column entirely? Well, this creates a problem, and this code would all have to be recompiled and debugged.

Now, of course, in databases, there are things like views that provide a level and direction between the application code and the database table. But again, that's a different subject.

---
