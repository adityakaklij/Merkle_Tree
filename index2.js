// Using Keccak256 hash

const { MerkleTree } = require('merkletreejs')
const keccak256 = require('keccak256')


const data = ['1', '2', '3', '4', '5', '6','7', '8', '9', '10', '11', '12', '13', '14', '15', '16']
// Need to use keccak256
const leaves = data.map(x => keccak256(x)) // Hashs all the leaf nodes
const tree = new MerkleTree(leaves, keccak256, {sortPairs: true}) // Create a new tree
const root = tree.getRoot().toString('hex')

const leaf = keccak256('17')
// const proof = tree.getProof(leaf)
const claim = leaves[1]
const proof = tree.getHexProof(leaf)
// const proof = tree.getHexProofs(leaf)

console.log(tree.verify(proof, leaf, root)) // true


// console.log("Root node: ", bufTohex(root)) //
console.log("Root node: ", (root)) //
console.log("Leaf node: ", leaf.toString('hex')) //
// console.log('proof:- ', proof.map(y => (y.data).toString('hex')))
console.log(proof) //
console.log(tree.toString())


// ["0xad7c5bef027816a800da1736444fb58a807ef4c9603b7848673f7e3a68eb14a","0x1219c99b22ee9acd905b8b7805a91b29ace6c3866372231fa7a965b580278968","0x0dbcdb3197fe756c3bd966c963eef41b04eb4d39250d03a0204fc13d5617a055","0x3a85010bde3dd100d12fd21822af5330e07915a79d72f7c0496cdf000a802c68"]

// const badLeaves = ['a', 'x', 'c'].map(x => SHA256(x))
// const badTree = new MerkleTree(badLeaves, SHA256)
// const badLeaf = SHA256('x')
// const badProof = badTree.getProof(badLeaf)
// console.log(badTree.verify(badProof, badLeaf, root)) // false