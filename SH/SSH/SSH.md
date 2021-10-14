

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md)

---

### SSH

---

* [GENERATE_SSH_AIX](#GENERATE_SSH_AIX)
* []()

---

#### GENERATE_SSH_AIX

```sh
in $HOME/..ssh

ssh-keygen -t rsa -C "username@hostname"
```

#### HOW_TO_CONNECT_WITH_KEYS

```
prepare the dir path on the target server properly
```

```
ssh -v -i /path/ofthepublickey/.ssh/id_rsa.pub.blabla 'user@host'
sftp -v -i /path/ofthepublickey/.ssh/id_rsa.pub.blabla 'user@host'
```

---
