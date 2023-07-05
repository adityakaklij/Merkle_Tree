// import { MerkleTree } from 'merkletreejs'
// import sha256 from 'crypto-js/sha256';
const { MerkleTree } = require('merkletreejs')
const SHA256 = require('crypto-js/sha256')


const data = ['1', '2', '3', '4', '5', '6', '8', '9', '10']
// Need to use keccak256
const leaves = data.map(x => SHA256(x)) // Hashs all the leaf nodes
const tree = new MerkleTree(leaves, SHA256, {sortPairs: true}) // Create a new tree
const root = tree.getRoot().toString('hex')

const leaf = SHA256('11')
const proof = tree.getProof(leaf)
console.log(tree.verify(proof, leaf, root)) // true


// console.log("Root node: ", bufTohex(root)) //
console.log("Root node: ", (root)) //
console.log("Leaf node: ", leaf.toString()) //
console.log('proof:- ', proof.map(y => (y.data).toString('hex')))


// const badLeaves = ['a', 'x', 'c'].map(x => SHA256(x))
// const badTree = new MerkleTree(badLeaves, SHA256)
// const badLeaf = SHA256('x')
// const badProof = badTree.getProof(badLeaf)
// console.log(badTree.verify(badProof, badLeaf, root)) // false