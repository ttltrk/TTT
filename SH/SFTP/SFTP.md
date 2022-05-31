

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md)

---

#### SFTP

---

on the target and on the source server go to your own folder and create a ```.ssh``` folder with permission 700 in the ```.ssh``` folder create a file with name ```authorized_keys``` and past the content from the clipboard and save it. change the permission of the file to 600

check the sshd_config and according to the settings change your file name

```
$ cd /etc/ssh
$ grep authorized_keys sshd_config
AuthorizedKeysFile      .ssh/authorized_keys2
$
```

in this case change the name of your file to authorized_keys2

Create an RSA key pair by issuing a command on the host that is similar to this command:

```
ssh-keygen -t rsa
```

access the target server via sftp

```
sftp -v -i /path/path/.ssh/id_rsa.name_of_the_key 'user@host'
```

access the target server via ssh (if you wish to modify the dirs/files on the target server)

```
ssh -i /path/path/.ssh/id_rsa.name_of_the_key 'user@host'
```

---
