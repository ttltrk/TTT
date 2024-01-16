
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
* [CONSENSUS_PROTOCOL](#CONSENSUS_PROTOCOL)
* [BLOCKCHAIN_DEMO](#BLOCKCHAIN_DEMO)
* [CREATE_A_BLOCKCHAIN](#CREATE_A_BLOCKCHAIN)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)
* [](#)

---

Satoshi Nakamoto

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
4. the avalanche effect - if you change a char, the whole hash will be different
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
and with changing nonce you can manipulate and generate the smallest hash

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

#### CONSENSUS_PROTOCOL

- Challenge 1: Attackers
- Challenge 2: Competing Chains

Consensus Protocols:
  - Proof-of-Work (POW)
  - Proof-of-Stake (PoS)
  - Other

- one of the node was updated by a new block, but before the spread for the rest of the nodes/chains
  some serious checks must be done   
  if check doesn't go through, then reject the block

cryptographic puzzles: Hard to solve - Easy to verify   

- what if two nodes receives two separate blocks at the same time
  the longest and/or the faster network will adopt the new blocks and the weakest network blocks goes by side (orphand block)

- the longest chain/network is king - if two same blocks were created at the same time, the fastest/longest chain win
  in this case the hashing power is the key

[^^^](#BLOCKCHAIN)

---

#### BLOCKCHAIN_DEMO

https://tools.superdatascience.com/blockchain/hash/

[^^^](#BLOCKCHAIN)

---

#### CREATE_A_BLOCKCHAIN

```py
import datetime
import hashlib
import json
from flask import Flask, jsonify

class Blockchain:

    def __init__(self):
        self.chain = []
        self.create_block(proof = 1, previous_hash = '0')

    def create_block(self, proof, previous_hash):
        block = {'index': len(self.chain)+1,
                 'timestamp': str(datetime.datetime.now()),
                 'proof': proof,
                 'previous_hash': previous_hash}
        self.chain.append(block)
        return block

    def get_previous_block(self):
        return self.chain[-1]

    def proof_of_work(self, previous_proof):
        new_proof = 1
        check_proof = False
        while check_proof is False:
```

[^^^](#BLOCKCHAIN)

---

####

[^^^](#BLOCKCHAIN)

---

####

[^^^](#BLOCKCHAIN)

---

####

[^^^](#BLOCKCHAIN)

---

####

[^^^](#BLOCKCHAIN)

---

####

[^^^](#BLOCKCHAIN)

---
