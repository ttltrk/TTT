
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md)

---

### ASSEMBLY

---

```

```

---

* [HELLO_WORLD](#HELLO_WORLD)
* [READ](#READ)
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

```
test
```

compile >> run

```
.model tiny  ; com program, Code Data & Stack in one 64k Segment
.code        ; code segment
org 100h     ; code starts at offset 100h

main proc near

mov ah,09h   ; function to display a string
mov dx,offset message    ; offset of Message string terminating with $
int 21h      ; DOS interrupt

mov ah,4ch   ; function to terminate
mov al,00
int 21h      ; DOS interrupt

endp
message db "hello world $" ; message to be dispalyed terminating with a $

end main

>>>
hellow world
>>>
```

---

#### READ

```
.model small
.data
.code

mov ah,1h  ; code for read character {character saved in "al")
int 21h    ; DOS interrupt "do it"
mov dl,al  ; copy character to "dl"

mov ah,2h  ; code for write character
int 21h    ; display character in "dl"

end

>>>
tt
>>>
```
