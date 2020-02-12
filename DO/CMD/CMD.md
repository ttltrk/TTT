
---

```
docker version
docker info
docker //list of commands
```

```
if using docker toolbox type in the IP addreess >> http://192.168.99.100
```

```
docker container run --publish 80:80 nginx //starting the nginx webserver
ctr+c //stop

docker container run --publish 80:80 --detach nginx //starting the nginx webserver in the background
docker container run --publish 80:80 --detach --name webhost nginx //starting the nginx webserver in the background and specify name

docker container ls //list out your containers
docker container stop <CONTAINER ID> // stop the server
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

```
docker container logs webhost //logfile

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

```
docker container top webhost //process running inside the container

C:\Users\AttilaTorok>docker container top webhost
PID                 USER                TIME                COMMAND
2089                root                0:00                nginx: master process nginx -g daemon off;
2127                101                 0:00                nginx: worker process

C:\Users\AttilaTorok>
```

```
docker container rm -f bbe //remove running container

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

```
mongo start

C:\Users\AttilaTorok>docker run --name mongo -d mongo
Unable to find image 'mongo:latest' locally
latest: Pulling from library/mongo
5c939e3a4d10: Pull complete                                                                                             c63719cdbe7a: Pull complete                                                                                             19a861ea6baf: Pull complete                                                                                             651c9d2d6c4f: Pull complete                                                                                             85155c6d5fac: Pull complete                                                                                             85fb0780fd97: Pull complete                                                                                             85b3b1a901f5: Pull complete                                                                                             6a882e007bb6: Pull complete                                                                                             f7806503a70f: Pull complete                                                                                             5732cde4308d: Pull complete                                                                                             8f892a804391: Pull complete                                                                                             afc61ce39de5: Pull complete                                                                                             ffc30d4b370e: Pull complete                                                                                             Digest: sha256:48a59166d81b41da82cedc8e57223cfc7b6314dc34e8a571dc12f2fc35ac9258
Status: Downloaded newer image for mongo:latest
57f58f39a3c8ec35fb0cd1d18c21c536a48a889d3409d71f4f1bbdfae633238e

C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS               NAMES
57f58f39a3c8        mongo               "docker-entrypoint.s…"   About a minute ago   Up About a minute   27017/tcp           mongo

C:\Users\AttilaTorok>docker top mongo
PID                 USER                TIME                COMMAND
2414                999                 0:01                mongod --bind_ip_all

C:\Users\AttilaTorok>ps -ef | grep mongod
       0   4352      1  0   Feb 03 con  0:45 mongod
AttilaTo   8436  12848  0 13:23:38 con  0:00 grep  mongod

C:\Users\AttilaTorok>docker stop mongo
mongo

C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

C:\Users\AttilaTorok>
```

---

```
docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql //run mysql container
//-d = detach -p = port -e = env variables

C:\Users\AttilaTorok>docker container run -d -p 3306:3306 --name db -e MYSQL_RANDOM_ROOT_PASSWORD=yes mysql
Unable to find image 'mysql:latest' locally
latest: Pulling from library/mysql
619014d83c02: Pull complete                                                                                                                9ced578c3a5f: Pull complete                                                                                                                731f6e13d8ea: Pull complete                                                                                                                3c183de42679: Pull complete                                                                                                                6de69b5c2f3c: Pull complete                                                                                                                00f0a4086406: Pull complete                                                                                                                84d93aea836d: Pull complete                                                                                                                f18efbfd8d76: Pull complete                                                                                                                012b302865d1: Pull complete                                                                                                                fe16fd240f59: Pull complete                                                                                                                ca3e793e545e: Pull complete                                                                                                                51d0f2cb2610: Pull complete                                                                                                                Digest: sha256:6d0741319b6a2ae22c384a97f4bbee411b01e75f6284af0cce339fee83d7e314
Status: Downloaded newer image for mysql:latest
a2dad48568d8b2b71e7f0c50bdd34288621c698c085b022ffad02e010ce27711

C:\Users\AttilaTorok>

docker container logs db //check the logs - you can find the password in the logs - GENERATED ROOT PASSWORD:
```

---

```
docker container run -d --name webserver -p 8080:80 httpd //run webserver

C:\Users\AttilaTorok>docker container run -d --name webserver -p 8080:80 httpd
Unable to find image 'httpd:latest' locally
latest: Pulling from library/httpd
bc51dd8edc1b: Already exists                                                                                                                                     dca5bc65e18f: Pull complete                                                                                                                                      ccac3445152a: Pull complete                                                                                                                                      8515f2015fbc: Pull complete                                                                                                                                      e35494488b8c: Pull complete                                                                                                                                      Digest: sha256:b783a610e75380aa152dd855a18368ea2f3becb5129d0541e2ec8b662cbd8afb
Status: Downloaded newer image for httpd:latest
644924a77b99613dfed62b6a846f48c58d727107c7c91fbb323b810035f6ec0e
```

```
docker container run -d --name proxy -p 80:80 nginx //start nginx

C:\Users\AttilaTorok>docker container run -d --name proxy -p 80:80 nginx
7354d78355acf5a0b4c6cacafe7628b97098f83dc4adb4ea5ce937d8506305d9

C:\Users\AttilaTorok>docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                               NAMES
7354d78355ac        nginx               "nginx -g 'daemon of…"   5 seconds ago       Up 5 seconds        0.0.0.0:80->80/tcp                  proxy
644924a77b99        httpd               "httpd-foreground"       2 minutes ago       Up 2 minutes        0.0.0.0:8080->80/tcp                webserver
a2dad48568d8        mysql               "docker-entrypoint.s…"   10 minutes ago      Up 10 minutes       0.0.0.0:3306->3306/tcp, 33060/tcp   db

C:\Users\AttilaTorok>
```

```
check the ports

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

```
stop and remove the processes

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

```
check the images

C:\Users\AttilaTorok>docker image ls
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
nginx               latest              2073e0bcb60e        3 days ago          127MB
httpd               latest              c562eeace183        3 days ago          165MB
mysql               latest              791b6e40940c        3 days ago          465MB
mongo               latest              8e89dfef54ff        8 days ago          386MB

C:\Users\AttilaTorok>
```

---

```
docker container top - process list in one container
docker container inspect - details of one container config
docker container stats - performance stats for all containers

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

---

```
docker container inspect mysql //json array about how the mysql was started
```

---

```
docker container run -it //start new container interactively
docker container exec -it //run additional command in existing container

you can use bash inside the container

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

---

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

---

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

---

```
C:\Users\AttilaTorok>docker container run -p 80:80 --name webhost -d nginx
411031eee3669fe9ed916b6b78f09f51525080a71ff3bfead5fdd0031d215545

C:\Users\AttilaTorok>docker container port webhost
80/tcp -> 0.0.0.0:80

C:\Users\AttilaTorok>docker container inspect --format '{{ .NetworkSettings.IPAddress }}' webhost
Template parsing error: template: :1: unexpected unclosed action in command

C:\Users\AttilaTorok>
```
