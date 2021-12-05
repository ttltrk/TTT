
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### ASSEMBLY

---

```

```

---

* [HELLO_WORLD](#HELLO_WORLD)
* [LOGIC_GATES]()
* [TRANSISTORS_TO_OS]()
* [NUMBER_SYSTEMS]()
* [X86_DATATYPES]()
* [X86_MICROCOMPUTER_DESIGN]()
* [X86_OPERATING_MODES]()
* [X86_REGISTERS]()
* [REGISTER__RULE_THEM_ALL]()
* [X86_FLAGS]()
* [FLOATING_POINT_UNIT]()
* [X86_MEMORY_MODELS]()
* [X86_INTEGERS]()
* []()
* []()
* []()
* []()
* []()
* []()

---

#### HELLO_WORLD

compile >> run

```
.model tiny
.code
org 100h

main proc near

mov ah,09h
mov dx,offset message
int 21h

mov ah,4ch
mov al,00
int 21h

endp
message db "hello world $"

end main
```

---
