
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [DO](https://github.com/ttltrk/TTT/blob/master/DO/DO.md)

---

### DOCKER_MASTERY

---

#### 03 - Creating and Using Containers

* [CONFIGURATION](#CONFIGURATION)
* [STARTING_NGINX](#STARTING_NGINX)
* [JUST_A_PROCESS](#JUST_A_PROCESS)
* [MANAGE_MULTIPLE_CONTAINERS](#MANAGE_MULTIPLE_CONTAINERS)
* [CLI_PROCESSING_MONITORING](#CLI_PROCESSING_MONITORING)
* [SHELL_INSIDE_CONTAINERS](#SHELL_INSIDE_CONTAINERS)
* [NETWORKS_PRIVATE_PUBLIC_COMMS](#NETWORKS_PRIVATE_PUBLIC_COMMS)
* [CLI_MANAGEMENT_VIRTUAL_NET](#CLI_MANAGEMENT_VIRTUAL_NET)
* [HOW_CONTAINERS_FIND_EACH_OTHERS](#HOW_CONTAINERS_FIND_EACH_OTHERS)
* [DNS_ROUND_ROBIN_TEST](#DNS_ROUND_ROBIN_TEST)

#### 04 - Container Images

* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

#### 05 -

* []()
* []()
* []()
* []()
* []()
* []()

#### 06 -

* []()
* []()
* []()
* []()
* []()
* []()

#### 07 -

* []()
* []()
* []()
* []()
* []()
* []()

#### 08 -

* []()
* []()
* []()
* []()
* []()
* []()

#### 09 -
#### 10 -
#### 11 -
#### 12 -
#### 13 -
#### 14 -
#### 15 -
#### 16 -
#### 17 -
#### 18 -
#### 19 -
#### 20 -
#### 21 -
#### 22 -

---

#### CONFIGURATION

```
docker version
docker info
docker //list of commands
```

```
if using docker toolbox type in the IP addreess >> http://192.168.99.100
```

[^^^](#DOCKER_MASTERY)

---

#### STARTING_NGINX

**starting the nginx webserver**

```
docker container run --publish 80:80 nginx
ctr+c //stop
```

**starting the nginx webserver in the background**

```
docker container run --publish 80:80 --detach nginx
```

**starting the nginx webserver in the background and specify name**

```
docker container run --publish 80:80 --detach --name webhost nginx
```

**list out your containers**

```
docker container ls
```

**stop the server**

```
docker container stop <CONTAINER ID>
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
d60c2c5e5ed0        nginx               "nginx -g 'daemon of…"   8 minutes ago       Up 8 minutes        0.0.0.0:80->80/tcp   wonderful_tu

C:\Users\AttilaTorok>docker container stop d60c2c5e5ed0
d60c2c5e5ed0

C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

```
C:\Users\AttilaTorok>docker container run --publish 80:80 --detach --name webhost nginx
bbee64f442ffe6aa2486a3ae9460bba631918e6ba11cdbe6975703b44a3a6668

C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                         PORTS                NAMES
bbee64f442ff        nginx               "nginx -g 'daemon of…"   5 seconds ago       Up 4 seconds                   0.0.0.0:80->80/tcp   webhost
b5278e85d261        nginx               "nginx -g 'daemon of…"   About an hour ago   Created                                             elegant_wing
d60c2c5e5ed0        nginx               "nginx -g 'daemon of…"   About an hour ago   Exited (0) About an hour ago                        wonderful_tu

C:\Users\AttilaTorok>
```

**logfile**

```
docker container logs webhost

C:\Users\AttilaTorok>docker container logs webhost
172.17.0.1 - - [04/Feb/2020:11:49:06 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:06 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:07 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:07 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:08 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:08 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:08 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:08 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:09 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:09 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:09 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"
172.17.0.1 - - [04/Feb/2020:11:49:10 +0000] "GET / HTTP/1.1" 304 0 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36" "-"

C:\Users\AttilaTorok>
```

**process running inside the container**

```
docker container top webhost

C:\Users\AttilaTorok>docker container top webhost
PID                 USER                TIME                COMMAND
2089                root                0:00                nginx: master process nginx -g daemon off;
2127                101                 0:00                nginx: worker process

C:\Users\AttilaTorok>
```

**help**

```
C:\Users\AttilaTorok>docker container --help

Usage:  docker container COMMAND

Manage containers

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  inspect     Display detailed information on one or more containers
  kill        Kill one or more running containers
  logs        Fetch the logs of a container
  ls          List containers
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  prune       Remove all stopped containers
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  run         Run a command in a new container
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker container COMMAND --help' for more information on a command.

C:\Users\AttilaTorok>
```

**remove running container**

```
docker container rm -f bbe

C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                         PORTS                NAMES
bbee64f442ff        nginx               "nginx -g 'daemon of…"   6 minutes ago       Up 6 minutes                   0.0.0.0:80->80/tcp   webhost
b5278e85d261        nginx               "nginx -g 'daemon of…"   About an hour ago   Created                                             elegant_wing
d60c2c5e5ed0        nginx               "nginx -g 'daemon of…"   About an hour ago   Exited (0) About an hour ago                        wonderful_tu

C:\Users\AttilaTorok>
C:\Users\AttilaTorok>
C:\Users\AttilaTorok>docker container rm bbe b52 d60
b52
d60
Error response from daemon: You cannot remove a running container bbee64f442ffe6aa2486a3ae9460bba631918e6ba11cdbe6975703b44a3a6668. Stop the container before attempting removal or force remove

C:\Users\AttilaTorok>docker container rm -f bbe
bbe

C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### JUST_A_PROCESS

**mongo start**

```
C:\Users\AttilaTorok>docker run --name mongo -d mongo
Unable to find image 'mongo:latest' locally
latest: Pulling from library/mongo
5c939e3a4d10: Pull complete                                                                                             c63719cdbe7a: Pull complete                                                                                             19a861ea6baf: Pull complete                                                                                             651c9d2d6c4f: Pull complete                                                                                             85155c6d5fac: Pull complete                                                                                             85fb0780fd97: Pull complete                                                                                             85b3b1a901f5: Pull complete                                                                                             6a882e007bb6: Pull complete                                                                                             f7806503a70f: Pull complete                                                                                             5732cde4308d: Pull complete                                                                                             8f892a804391: Pull complete                                                                                             afc61ce39de5: Pull complete                                                                                             ffc30d4b370e: Pull complete                                                                                             Digest: sha256:48a59166d81b41da82cedc8e57223cfc7b6314dc34e8a571dc12f2fc35ac9258
Status: Downloaded newer image for mongo:latest
57f58f39a3c8ec35fb0cd1d18c21c536a48a889d3409d71f4f1bbdfae633238e
```

**list out processes**

```
C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS               NAMES
57f58f39a3c8        mongo               "docker-entrypoint.s…"   About a minute ago   Up About a minute   27017/tcp           mongo

C:\Users\AttilaTorok>docker top mongo
PID                 USER                TIME                COMMAND
2414                999                 0:01                mongod --bind_ip_all

C:\Users\AttilaTorok>ps -ef | grep mongod
       0   4352      1  0   Feb 03 con  0:45 mongod
AttilaTo   8436  12848  0 13:23:38 con  0:00 grep  mongod
```

**stop mongo**

```
C:\Users\AttilaTorok>docker stop mongo
mongo

C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### MANAGE_MULTIPLE_CONTAINERS

**run mysql container**

```
docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql

-d = detach
-p = port
-e = env variables
```

```
C:\Users\AttilaTorok>docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
Unable to find image 'mysql:latest' locally
latest: Pulling from library/mysql
619014d83c02: Pull complete                                                                                                                9ced578c3a5f: Pull complete                                                                                                                731f6e13d8ea: Pull complete                                                                                                                3c183de42679: Pull complete                                                                                                                6de69b5c2f3c: Pull complete                                                                                                                00f0a4086406: Pull complete                                                                                                                84d93aea836d: Pull complete                                                                                                                f18efbfd8d76: Pull complete                                                                                                                012b302865d1: Pull complete                                                                                                                fe16fd240f59: Pull complete                                                                                                                ca3e793e545e: Pull complete                                                                                                                51d0f2cb2610: Pull complete                                                                                                                Digest: sha256:6d0741319b6a2ae22c384a97f4bbee411b01e75f6284af0cce339fee83d7e314
Status: Downloaded newer image for mysql:latest
a2dad48568d8b2b71e7f0c50bdd34288621c698c085b022ffad02e010ce27711

C:\Users\AttilaTorok>
```

**check the logs - you can find the password in the logs - GENERATED ROOT PASSWORD**

```
docker container logs db
```

**run webserver**

```
docker container run -d --name webserver -p 8080:80 httpd

C:\Users\AttilaTorok>docker container run -d --name webserver -p 8080:80 httpd
Unable to find image 'httpd:latest' locally
latest: Pulling from library/httpd
bc51dd8edc1b: Already exists                                                                                                                                     dca5bc65e18f: Pull complete                                                                                                                                      ccac3445152a: Pull complete                                                                                                                                      8515f2015fbc: Pull complete                                                                                                                                      e35494488b8c: Pull complete                                                                                                                                      Digest: sha256:b783a610e75380aa152dd855a18368ea2f3becb5129d0541e2ec8b662cbd8afb
Status: Downloaded newer image for httpd:latest
644924a77b99613dfed62b6a846f48c58d727107c7c91fbb323b810035f6ec0e
```

**start nginx**

```
docker container run -d --name proxy -p 80:80 nginx

C:\Users\AttilaTorok>docker container run -d --name proxy -p 80:80 nginx
7354d78355acf5a0b4c6cacafe7628b97098f83dc4adb4ea5ce937d8506305d9

C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                               NAMES
7354d78355ac        nginx               "nginx -g 'daemon of…"   5 seconds ago       Up 5 seconds        0.0.0.0:80->80/tcp                  proxy
644924a77b99        httpd               "httpd-foreground"       2 minutes ago       Up 2 minutes        0.0.0.0:8080->80/tcp                webserver
a2dad48568d8        mysql               "docker-entrypoint.s…"   10 minutes ago      Up 10 minutes       0.0.0.0:3306->3306/tcp, 33060/tcp   db

C:\Users\AttilaTorok>
```

**check the ports**

```
curl localhost:8080
curl localhost:80
curl localhost:3306

C:\Users\AttilaTorok>curl localhost:8080
<html><body><h1>It works!</h1></body></html>

C:\Users\AttilaTorok>curl localhost:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>

C:\Users\AttilaTorok>curl localhost:3306
Warning: Binary output can mess up your terminal. Use "--output -" to tell
Warning: curl to output it to your terminal anyway, or consider "--output
Warning: <FILE>" to save to a file.

C:\Users\AttilaTorok>
```

**stop and remove the processes**

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                               NAMES
7354d78355ac        nginx               "nginx -g 'daemon of…"   2 minutes ago       Up 2 minutes        0.0.0.0:80->80/tcp                  proxy
644924a77b99        httpd               "httpd-foreground"       5 minutes ago       Up 5 minutes        0.0.0.0:8080->80/tcp                webserver
a2dad48568d8        mysql               "docker-entrypoint.s…"   13 minutes ago      Up 13 minutes       0.0.0.0:3306->3306/tcp, 33060/tcp   db

C:\Users\AttilaTorok>docker container stop 735 644 a2d
735
644
a2d

C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                          PORTS               NAMES
7354d78355ac        nginx               "nginx -g 'daemon of…"   8 minutes ago       Exited (0) About a minute ago                       proxy
644924a77b99        httpd               "httpd-foreground"       10 minutes ago      Exited (0) About a minute ago                       webserver
a2dad48568d8        mysql               "docker-entrypoint.s…"   18 minutes ago      Exited (0) About a minute ago                       db
57f58f39a3c8        mongo               "docker-entrypoint.s…"   20 hours ago        Exited (0) 20 hours ago                             mongo

C:\Users\AttilaTorok>docker container rm 735 644 a2d 57b
735
644
a2d
Error: No such container: 57b

C:\Users\AttilaTorok>docker container rm 57f
57f

C:\Users\AttilaTorok>
C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

**check the images**

```
C:\Users\AttilaTorok>docker image ls
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nginx               latest              2073e0bcb60e        3 days ago          127MB
httpd               latest              c562eeace183        3 days ago          165MB
mysql               latest              791b6e40940c        3 days ago          465MB
mongo               latest              8e89dfef54ff        8 days ago          386MB

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### CLI_PROCESSING_MONITORING

**process list in one container**

```
docker container top
```

**details of one container config**

```
docker container inspect
```

**performance stats for all containers**

```
docker container stats
```

```
C:\Users\AttilaTorok>docker container run -d --name nginx nginx
3f2233a67e0f867f8da303c3f3774c0a2f0dfac1b79dd8fc0a0e7881880942bd

C:\Users\AttilaTorok>docker container run -d --name mysql -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql
b5df1402acf57d4b4f6e4728bd44c5f1e62842e9d9e84d0b95929626a4381b71

C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
b5df1402acf5        mysql               "docker-entrypoint.s…"   7 seconds ago       Up 6 seconds        3306/tcp, 33060/tcp   mysql
3f2233a67e0f        nginx               "nginx -g 'daemon of…"   52 seconds ago      Up 52 seconds       80/tcp                nginx

C:\Users\AttilaTorok>docker container top mysql
PID                 USER                TIME                COMMAND
2785                999                 0:01                mysqld

C:\Users\AttilaTorok>docker container top nginx
PID                 USER                TIME                COMMAND
2708                root                0:00                nginx: master process nginx -g daemon off;
2750                101                 0:00                nginx: worker process

C:\Users\AttilaTorok>
```

**json array about how the mysql was started**

```
docker container inspect mysql //json array about how the mysql was started
```

[^^^](#DOCKER_MASTERY)

---

#### SHELL_INSIDE_CONTAINERS

```
docker container run -it //start new container interactively
docker container exec -it //run additional command in existing container

you can use bash inside the container
```

```
C:\Users\AttilaTorok>docker container run -t --name proxy nginx bash
root@db40855ba795:/#

C:\Users\AttilaTorok>docker container run -it --name ubuntu ubuntu
Unable to find image 'ubuntu:latest' locally
latest: Pulling from library/ubuntu
5c939e3a4d10: Already exists                                                                                                                c63719cdbe7a: Already exists                                                                                                                19a861ea6baf: Already exists                                                                                                                651c9d2d6c4f: Already exists                                                                                                                Digest: sha256:8d31dad0c58f552e890d68bbfb735588b6b820a46e459672d96e585871acc110
Status: Downloaded newer image for ubuntu:latest
root@0cb70666eb84:/# apt-get update
Get:1 http://archive.ubuntu.com/ubuntu bionic InRelease [242 kB]
Get:2 http://archive.ubuntu.com/ubuntu bionic-updates InRelease [88.7 kB]
Get:3 http://archive.ubuntu.com/ubuntu bionic-backports InRelease [74.6 kB]
Get:4 http://archive.ubuntu.com/ubuntu bionic/multiverse amd64 Packages [186 kB]
Get:5 http://archive.ubuntu.com/ubuntu bionic/main amd64 Packages [1344 kB]
Get:6 http://archive.ubuntu.com/ubuntu bionic/restricted amd64 Packages [13.5 kB]
Get:7 http://archive.ubuntu.com/ubuntu bionic/universe amd64 Packages [11.3 MB]
Get:8 http://archive.ubuntu.com/ubuntu bionic-updates/universe amd64 Packages [1342 kB]
Get:9 http://archive.ubuntu.com/ubuntu bionic-updates/restricted amd64 Packages [40.5 kB]
Get:10 http://archive.ubuntu.com/ubuntu bionic-updates/multiverse amd64 Packages [11.1 kB]
Get:11 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 Packages [1096 kB]
Get:12 http://archive.ubuntu.com/ubuntu bionic-backports/main amd64 Packages [2496 B]
Get:13 http://archive.ubuntu.com/ubuntu bionic-backports/universe amd64 Packages [4242 B]
Get:14 http://security.ubuntu.com/ubuntu bionic-security InRelease [88.7 kB]
Get:15 http://security.ubuntu.com/ubuntu bionic-security/main amd64 Packages [800 kB]
Get:16 http://security.ubuntu.com/ubuntu bionic-security/universe amd64 Packages [808 kB]
Get:17 http://security.ubuntu.com/ubuntu bionic-security/restricted amd64 Packages [26.7 kB]
Get:18 http://security.ubuntu.com/ubuntu bionic-security/multiverse amd64 Packages [7061 B]
Fetched 17.5 MB in 4s (4208 kB/s)
Reading package lists... Done
root@0cb70666eb84:/#

root@0cb70666eb84:/# curl google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="http://www.google.com/">here</A>.
</BODY></HTML>
root@0cb70666eb84:/# exit
exit
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
01cb30af8be7        mysql               "docker-entrypoint.s…"   About an hour ago   Up About an hour    3306/tcp, 33060/tcp   mysql
ca8e4271486b        nginx               "nginx -g 'daemon of…"   About an hour ago   Up About an hour    80/tcp                nginx

C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS                 NAMES
0cb70666eb84        ubuntu              "/bin/bash"              4 minutes ago       Exited (0) 11 seconds ago                         ubuntu
db40855ba795        nginx               "bash"                   55 minutes ago      Exited (0) 5 minutes ago                          proxy
01cb30af8be7        mysql               "docker-entrypoint.s…"   About an hour ago   Up About an hour            3306/tcp, 33060/tcp   mysql
ca8e4271486b        nginx               "nginx -g 'daemon of…"   About an hour ago   Up About an hour            80/tcp                nginx
```

```
C:\Users\AttilaTorok>docker container start -ai ubuntu
root@0cb70666eb84:/# curl google.com
<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="http://www.google.com/">here</A>.
</BODY></HTML>
root@0cb70666eb84:/# exit
exit
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
01cb30af8be7        mysql               "docker-entrypoint.s…"   About an hour ago   Up About an hour    3306/tcp, 33060/tcp   mysql
ca8e4271486b        nginx               "nginx -g 'daemon of…"   About an hour ago   Up About an hour    80/tcp                nginx

C:\Users\AttilaTorok>docker container ls -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                     PORTS                 NAMES
0cb70666eb84        ubuntu              "/bin/bash"              6 minutes ago       Exited (0) 8 seconds ago                         ubuntu
db40855ba795        nginx               "bash"                   58 minutes ago      Exited (0) 8 minutes ago                         proxy
01cb30af8be7        mysql               "docker-entrypoint.s…"   About an hour ago   Up About an hour           3306/tcp, 33060/tcp   mysql
ca8e4271486b        nginx               "nginx -g 'daemon of…"   About an hour ago   Up About an hour           80/tcp                nginx

C:\Users\AttilaTorok>
```

```
C:\Users\AttilaTorok>docker container exec -it mysql bash
root@01cb30af8be7:/# ps aux
bash: ps: command not found
root@01cb30af8be7:/# ps -ef
bash: ps: command not found
root@01cb30af8be7:/# exit
exit

C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                 NAMES
01cb30af8be7        mysql               "docker-entrypoint.s…"   About an hour ago   Up About an hour    3306/tcp, 33060/tcp   mysql
ca8e4271486b        nginx               "nginx -g 'daemon of…"   About an hour ago   Up About an hour    80/tcp                nginx

C:\Users\AttilaTorok>
```

```
C:\Users\AttilaTorok>docker pull alpine
Using default tag: latest
latest: Pulling from library/alpine
c9b1b535fdd9: Pull complete                                                                                                                 Digest: sha256:ab00606a42621fb68f2ed6ad3c88be54397f981a7b70a79db3d1172b11c4367d
Status: Downloaded newer image for alpine:latest
docker.io/library/alpine:latest

C:\Users\AttilaTorok>docker image ls
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nginx               latest              2073e0bcb60e        4 days ago          127MB
httpd               latest              c562eeace183        4 days ago          165MB
mysql               latest              791b6e40940c        4 days ago          465MB
mongo               latest              8e89dfef54ff        9 days ago          386MB
alpine              latest              e7d92cdc71fe        2 weeks ago         5.59MB
ubuntu              latest              ccc6e87d482b        3 weeks ago         64.2MB
```

```
C:\Users\AttilaTorok>docker container run -it alpine sh
/ # apk
apk-tools 2.10.4, compiled for x86_64.

Installing and removing packages:
  add       Add PACKAGEs to 'world' and install (or upgrade) them, while ensuring that all dependencies are met
  del       Remove PACKAGEs from 'world' and uninstall them

System maintenance:
  fix       Repair package or upgrade it without modifying main dependencies
  update    Update repository indexes from all remote repositories
  upgrade   Upgrade currently installed packages to match repositories
  cache     Download missing PACKAGEs to cache and/or delete unneeded files from cache

Querying information about packages:
  info      Give detailed information about PACKAGEs or repositories
  list      List packages by PATTERN and other criteria
  dot       Generate graphviz graphs
  policy    Show repository policy for packages

Repository maintenance:
  index     Create repository index file from FILEs
  fetch     Download PACKAGEs from global repositories to a local directory
  verify    Verify package integrity and signature
  manifest  Show checksums of package contents

Use apk <command> --help for command-specific help.
Use apk --help --verbose for a full command listing.

This apk has coffee making abilities.
/ #
```

[^^^](#DOCKER_MASTERY)

---

#### NETWORKS_PRIVATE_PUBLIC_COMMS

```
C:\Users\AttilaTorok>docker container run -p 80:80 --name webhost -d nginx
411031eee3669fe9ed916b6b78f09f51525080a71ff3bfead5fdd0031d215545

C:\Users\AttilaTorok>docker container port webhost
80/tcp -> 0.0.0.0:80
```

```
C:\Users\AttilaTorok>docker container inspect --format "{{ .NetworkSettings.IPAddress }}" webhost_02
172.17.0.2

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### CLI_MANAGEMENT_VIRTUAL_NET

```
C:\Users\AttilaTorok>docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
60b56822dc3f        bridge              bridge              local
88e3a44dbd66        host                host                local
a0ca6542eaa2        none                null                local

C:\Users\AttilaTorok>docker network inspect bridge
...
...
"Containers": {
           "4f26ee5b5453e69f807d0d69bb76c74999e651464dbe594c3c151ba7d44e9d9b": {
               "Name": "webhost_02",
               "EndpointID": "947c10acb382892451edb1db57221a1d002eb4d3fffd1458ef7319ed2a3178c0",
               "MacAddress": "02:42:ac:11:00:02",
               "IPv4Address": "172.17.0.2/16",
               "IPv6Address": ""

```

```
C:\Users\AttilaTorok>docker network create my_app_net
c7d067b71d2b7ee561e9fc31500297001b52af2c6f8ef216d57ee5f56cc5ebf2

C:\Users\AttilaTorok>docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
60b56822dc3f        bridge              bridge              local
88e3a44dbd66        host                host                local
c7d067b71d2b        my_app_net          bridge              local
a0ca6542eaa2        none                null                local

C:\Users\AttilaTorok>
```

```
C:\Users\AttilaTorok>docker container run -d --name new_nginx --network my_app_net nginx
06517d5ff9825b768a37d0fe241a087568cb2548be547ddb154c1342228bf087

C:\Users\AttilaTorok>docker network inspect my_app_net
[
    {
        "Name": "my_app_net",
        "Id": "c7d067b71d2b7ee561e9fc31500297001b52af2c6f8ef216d57ee5f56cc5ebf2",
        "Created": "2020-02-12T13:26:49.531859798Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "06517d5ff9825b768a37d0fe241a087568cb2548be547ddb154c1342228bf087": {
                "Name": "new_nginx",
                "EndpointID": "9fd5488e352c333730be3b82155342e16db3255f7519617803b7b2a29f66467f",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### HOW_CONTAINERS_FIND_EACH_OTHERS

```
C:\Users\AttilaTorok>docker container run -d --name my_nginx --network my_app_net nginx
3cdec9d65880219f4bbd4f1256de3d1cd5ddae4d2930b016662661b133b353f0

C:\Users\AttilaTorok>docker container exec -it my_nginx ping new_nginx
OCI runtime exec failed: exec failed: container_linux.go:346: starting container process caused "exec: \"ping\": executable file not found in $PATH": unknown

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---

#### DNS_ROUND_ROBIN_TEST

```
C:\Users\AttilaTorok>docker network create dude
706af658ea3c15ababd1e5b84923c092a99ab5a4bb71c909fe1ded1fb2e7fcb3

C:\Users\AttilaTorok>docker container run -d --net dude --net-alias search elasticssearch:2
Unable to find image 'elasticssearch:2' locally
docker: Error response from daemon: pull access denied for elasticssearch, repository does not exist or may require 'docker login': denied: requested access to the resource is denied.
See 'docker run --help'.
```

```
C:\Users\AttilaTorok>docker container run --rm -it centos:7 bash
Unable to find image 'centos:7' locally
7: Pulling from library/centos
ab5ef0e58194: Pull complete                                                                                             Digest: sha256:4a701376d03f6b39b8c2a8f4a8e499441b0d567f9ab9d58e4991de4472fb813c
Status: Downloaded newer image for centos:7
[root@8d57889fec1c /]# curl --version
curl 7.29.0 (x86_64-redhat-linux-gnu) libcurl/7.29.0 NSS/3.36 zlib/1.2.7 libidn/1.28 libssh2/1.4.3
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp scp sftp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IDN IPv6 Largefile NTLM NTLM_WB SSL libz unix-sockets
[root@8d57889fec1c /]# exit
exit
```

```
C:\Users\AttilaTorok>docker container run -d --net dude --net-alias search elasticsearch:2
Unable to find image 'elasticsearch:2' locally
2: Pulling from library/elasticsearch
05d1a5232b46: Pull complete                                                                                             5cee356eda6b: Pull complete                                                                                             89d3385f0fd3: Pull complete                                                                                             65dd87f6620b: Pull complete                                                                                             78a183a01190: Pull complete                                                                                             1a4499c85f97: Pull complete                                                                                             2c9d39b4bfc1: Pull complete                                                                                             1b1cec2222c9: Pull complete                                                                                             59ff4ce9df68: Pull complete                                                                                             1976bc3ee432: Pull complete                                                                                             a27899b7a5b5: Pull complete                                                                                             b0fc7d2c927a: Pull complete                                                                                             6d94b96bbcd0: Pull complete                                                                                             6f5bf40725fd: Pull complete                                                                                             2bf2a528ae9a: Pull complete                                                                                             Digest: sha256:41ed3a1a16b63de740767944d5405843db00e55058626c22838f23b413aa4a39
Status: Downloaded newer image for elasticsearch:2
d852d387bc27f8bb0faa78456acd069fa10809d06b32627174ae8176b054e7ee
```

```
C:\Users\AttilaTorok>docker container run -d --net dude --net-alias search elasticsearch:2
3e89036b1a3886681aa1f477385140f6e0043164550be86f9143ae2bbad39dfe
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
3e89036b1a38        elasticsearch:2     "/docker-entrypoint.…"   12 seconds ago      Up 11 seconds       9200/tcp, 9300/tcp   epic_cray
d852d387bc27        elasticsearch:2     "/docker-entrypoint.…"   26 seconds ago      Up 24 seconds       9200/tcp, 9300/tcp   unruffled_solomon
```

```
C:\Users\AttilaTorok>docker container run --rm --net dude alpine nslookup search
Server:         127.0.0.11
Address:        127.0.0.11:53

Non-authoritative answer:
Name:   search
Address: 172.19.0.2
Name:   search
Address: 172.19.0.3

Non-authoritative answer:
```

```
C:\Users\AttilaTorok>docker container run --rm --net dude centos curl -s search:9200
Unable to find image 'centos:latest' locally
latest: Pulling from library/centos
8a29a15cefae: Pull complete                                                                                             Digest: sha256:fe8d824220415eed5477b63addf40fb06c3b049404242b31982106ac204f6700
Status: Downloaded newer image for centos:latest
{
  "name" : "Moon Knight",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "KcbFBsDnRzmC0kP9EuDtgg",
  "version" : {
    "number" : "2.4.6",
    "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
    "build_timestamp" : "2017-07-18T12:17:44Z",
    "build_snapshot" : false,
    "lucene_version" : "5.5.4"
  },
  "tagline" : "You Know, for Search"
}

C:\Users\AttilaTorok>docker container run --rm --net dude centos curl -s search:9200
{
  "name" : "Champion of the Universe",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "tboe7qJbS76uhrWH2aGodQ",
  "version" : {
    "number" : "2.4.6",
    "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
    "build_timestamp" : "2017-07-18T12:17:44Z",
    "build_snapshot" : false,
    "lucene_version" : "5.5.4"
  },
  "tagline" : "You Know, for Search"
}
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                NAMES
3e89036b1a38        elasticsearch:2     "/docker-entrypoint.…"   3 minutes ago       Up 3 minutes        9200/tcp, 9300/tcp   epic_cray
d852d387bc27        elasticsearch:2     "/docker-entrypoint.…"   3 minutes ago       Up 3 minutes        9200/tcp, 9300/tcp   unruffled_solomon
```

```
C:\Users\AttilaTorok>docker container rm -f epic_cray unruffled_solomon
epic_cray
unruffled_solomon
```

```
C:\Users\AttilaTorok>docker container ls
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

[^^^](#DOCKER_MASTERY)

---
