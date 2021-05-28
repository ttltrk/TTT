
---

#### [M](https://github.com/ttltrk/TTT/blob/master/menu.md) - [BLOCKCHAIN](https://github.com/ttltrk/TTT/blob/master/BLK/BLK.md)

---

### BLOCKCHAIN

---

* [WHAT_IS_BLOCKCHAIN](#WHAT_IS_BLOCKCHAIN)
* [SHA256](#SHA256)
* [IMMUTABLE_LEDGER](#IMMUTABLE_LEDGER)
* [DISTRIBUTED_P2P_NETWORK](#DISTRIBUTED_P2P_NETWORK)
* [HOW_MINING_WORKS](#HOW_MINING_WORKS)
* [BYZANTINE_FAULT_TOLERANCE](#BYZANTINE_FAULT_TOLERANCE)
* [](#)
* [](#)
* [](#)
* [](#)

---

#### WHAT_IS_BLOCKCHAIN

Blockchain is a continuously growing list of records, called blocks, which are linked and secured using cryptography.

Inside the block

```
1. Data: "Hello World"
2. Prev hash: 034DFA357
3. Hash: 4D56E1F05
```

Blockchain
Blocks are cryptographically linked together

```
1. Genesis Block
  - data: "blabla"
  - prev hash: no because it is a first block
  - hash: 034DFA357

2. Second Block
  - data: "hehehehe"
  - prev hash: 034DFA357
  - hash: 4D56E1F05

3. Third Block
  - data: "xoxoxo"
  - prev hash: 4D56E1F05
  - hash: 77UYT83RE
```

[^^^](#BLOCKCHAIN)

---

#### SHA256

NSA developed the SHA256

```
256 bit
64 char
digits and chars = hexadecimal

every char = 4 bit
64x4=256
```

the 5 requirements for hash algorithms

```
1. one-way
2. deterministic
3. fast computation
4. the avalanche effect
5. must withstand collisions
```

https://tools.superdatascience.com/blockchain/hash/

[^^^](#BLOCKCHAIN)

---

#### IMMUTABLE_LEDGER

[^^^](#BLOCKCHAIN)

---

#### DISTRIBUTED_P2P_NETWORK

one hacked blockchain will be recovery asap from the p2p network clients and will be replaced
by the correct chain, but if the 51% of the blockchain is hacked in this case the p2p network
will replace the wrong/hacked hash

[^^^](#BLOCKCHAIN)

---

#### HOW_MINING_WORKS

changing nonce can change the hash - avalanche effect

```
BLOCK: #3

NONCE: 34

DATA:

  Joe -> Karl 500 hadcoins
  Joe -> Greg 100 hadcoins
  Karl -> Ebay 100 hadcoins

PREV.HASH:

  000ER45DEW31Q

HASH:

  8899WE00SER0E
```

a hash is a number

miners trying to hit the smallest nonce (from the all possible hashes) below the target 0000
it means keep iterating the nonce until you get to the target

[^^^](#BLOCKCHAIN)

---

#### BYZANTINE_FAULT_TOLERANCE

[^^^](#BLOCKCHAIN)

---
