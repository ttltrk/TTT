

---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [SH](https://github.com/ttltrk/TTT/blob/master/SH/SH.md)

---

### PROFILE

---

```sh
cd ~
```

---

```sh
cat .profile
less .profile | grep -i <name_ofthe_bank>
```

---

```sh
function grepv {
    grep -v grep
}

ps -ef | grep http | grep -v grep | wc -l
ps -ef | grep http | grepv | wc -l
```

---

```sh
alias ll="ls -l"
```

---

reload profile

```sh
login once again or
. ~/.profile
```

---
