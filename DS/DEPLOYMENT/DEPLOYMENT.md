
---

### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [DS](https://github.com/ttltrk/TTT/blob/master/DS/DS.md)

---

### DEPLOYMENT

---

* [INFORMATION_SERVER_DOMAIN](#INFORMATION_SERVER_DOMAIN)
* [SERVER_START_UP](#SERVER_START_UP)
* [STARTING_IS_ON_LINUX](#STARTING_IS_ON_LINUX)
* [](#)
* [](#)

---

#### INFORMATION_SERVER_DOMAIN

```
- Metadata Server backbone, hosted by an IBM WebSphere Application Server (WAS) instance

- One or more DataStage servers
    Can be on the same system or on separate systems

- One database manager instance containing the Repository database (XMETA)

- Information Server clients
    Web Console
    DataStage clients

- Additional Information Server products
    Information Analyzer, Information Governance Catalog,
    QualityStage (part of DataStage), Data Click, FastTrack
```

[^^^](#DEPLOYMENT)

---

#### SERVER_START_UP

```
- Starting the Metadata Server (WAS) on Windows:
    Select the IBM WebSphere menu
    Click Start the Server from the InfoSphere profile

- Starting the Metadata Server on Unix platforms:
    Invoke the startServer.sh script in the
    WebSphere/AppServer/profiles/InfoSphere/bin directory

- By default, the startup services are configured to run automatically upon system startup

- To begin work in DataStage, double-click on a DataStage client icon, and then log in

- To begin work in the Information Server Web Console, open a web
  browser, enter the address of the services (WAS) system, and then login
```

[^^^](#DEPLOYMENT)

---

#### STARTING_IS_ON_LINUX

```

```

[^^^](#DEPLOYMENT)

---

####

```

```

[^^^](#DEPLOYMENT)

---

####

```

```

[^^^](#DEPLOYMENT)

---
