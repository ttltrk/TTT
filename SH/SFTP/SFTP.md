

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md)

---

#### SFTP ON AIX

---

On the source side create .ssh (permission 700). Create an RSA key pair by issuing a command on the host that is similar to this command:

```
ssh-keygen -t rsa
```

Access the target server via ssh (if you wish to modify the dirs/files on the target server)

```
ssh -i 'user@host'
```

later you will be able to use this cmd

```
ssh -i /path/path/.ssh/id_rsa.name_of_the_key 'user@host'
```

on the target server go to your own folder and create a ```.ssh``` folder with permission 700 in the ```.ssh``` folder create a file with name ```authorized_keys``` and past the content from the ```id_rsa.name_of_the_key``` and save it. change the permission of the file to 600

check the sshd_config and according to the settings change your file name

```
$ cd /etc/ssh
$ grep authorized_keys sshd_config
AuthorizedKeysFile      .ssh/authorized_keys2
$
```

access the target server via sftp

```
sftp -v -i /path/path/.ssh/id_rsa.name_of_the_key 'user@host'
```

---
