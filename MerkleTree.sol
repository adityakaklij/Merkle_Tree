// SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract Verifier {
    bytes32 private root;

    constructor(bytes32 _root) {
        root = _root;
    }

    function verify( bytes32[] memory proof, bytes32 leaf ) public view  returns(bool){

        return MerkleProof.verify(proof, root, leaf);
    }

}
// from index2.js

/*
true
Root node:  dd13d0580f36b47e2e9c008a2179229c341f92bc14b7d7366ffdafb513bab4b5
Leaf node:  c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
[
  '0xad7c5bef027816a800da1736444fb58a807ef4c9603b7848673f7e3a68eb14a5',
  '0x1219c99b22ee9acd905b8b7805a91b29ace6c3866372231fa7a965b580278968',
  '0x0dbcdb3197fe756c3bd966c963eef41b04eb4d39250d03a0204fc13d5617a055'
]
└─ dd13d0580f36b47e2e9c008a2179229c341f92bc14b7d7366ffdafb513bab4b5
   ├─ ee0b3bc835013691b08fbe876d80f0d332e594645e2b73f3ea241f8a850c42db
   │  ├─ a2599cd4778e8cd8b3e83ee85b7aa6cf95199ae73cf30fc78b2e56bf4185dce2
   │  │  ├─ c89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6
   │  │  └─ ad7c5bef027816a800da1736444fb58a807ef4c9603b7848673f7e3a68eb14a5
   │  └─ 1219c99b22ee9acd905b8b7805a91b29ace6c3866372231fa7a965b580278968
   │     ├─ 2a80e1ef1d7842f27f2e6be0972bb708b9a135c38860dbe73c27c3486c34f4de
   │     └─ 13600b294191fc92924bb3ce4b969c1e7e2bab8f4c93c3fc6d0a51733df3c060
   └─ 0dbcdb3197fe756c3bd966c963eef41b04eb4d39250d03a0204fc13d5617a055
      ├─ d5f2cc77b02cdfeeb0101a2ef46f583e4a552fe89616f7db273cdb510df4f3d9
      │  ├─ ceebf77a833b30520287ddd9478ff51abbdffa30aa90a8d655dba0e8a79ce0c1
      │  └─ e455bf8ea6e7463a1046a0b52804526e119b4bf5136279614e0b1e8e296a4e2d
      └─ 3ceb0f2fe15be2a24edac38d32e1b42c55e20e749e1dc6cb8413e88a34c9be63
         ├─ e4b1702d9298fee62dfeccc57d322a463ad55ca201256d01f62b45b2e1c21c10
         └─ d2f8f61201b2b11a78d6e866abc9c3db2ae8631fa656bfe5cb53668255367afb
*/


/*

Verify input:- 
    proof: ["0xad7c5bef027816a800da1736444fb58a807ef4c9603b7848673f7e3a68eb14a5","0x1219c99b22ee9acd905b8b7805a91b29ace6c3866372231fa7a965b580278968","0x0dbcdb3197fe756c3bd966c963eef41b04eb4d39250d03a0204fc13d5617a055"]
    leaf: 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6

*/ 