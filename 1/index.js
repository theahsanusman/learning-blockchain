const sha256 = require('sha256')

// Contructor Function
function BlockChain() {
  this.chain = []
  this.pendingTransactions = []
  this.chain.push({
      index: 1,
      timestamp: Date(Date.now()),
      transactions:[],
      prevBlockHash:'0',
      hash:'0',
      nounce:100,
  })
}

// Method
// NOUNCE IS A NUMBER BY PROOF OF WORK
// NEW BLOCK HASH IS GENERATED BASED UPON PREV.. BLOCK HASHES
// SHA256 algo with be used for HASH

BlockChain.prototype.createNewBlock = function (prevBlockHash) {
  const newBlock = {
    index: this.chain.length + 1,
    timestamp: Date(Date.now()),
    transactions: this.pendingTransactions,
    prevBlockHash,
  }

  const {nounce, hash} = this.POW(prevBlockHash, newBlock)
  newBlock.hash = hash
  newBlock.nounce = nounce
  this.chain.push(newBlock)
  this.pendingTransactions = []

  return newBlock
}

BlockChain.prototype.lastBlock = function () {
  return this.chain[this.chain.length - 1]
}

BlockChain.prototype.createNewTransaction = function (
  amount,
  sender,
  recipient,
) {
  const newTransaction = {
    amount,
    sender,
    recipient,
  }

  this.pendingTransactions.push(newTransaction)
}

BlockChain.prototype.blockHash = function (
  prevBlockHash,
  currentBlockData,
  nounce,
) {
  const dataString = `${prevBlockHash}${currentBlockData}${nounce}`
  return sha256(dataString)
}

BlockChain.prototype.POW = function (prevBlockHash, currentBlockData) {
  let nounce = 0
  let hash = this.blockHash(prevBlockHash, currentBlockData, nounce)

  while (hash.substring(0, 4) !== '0000') {
    nounce++
    hash = this.blockHash(prevBlockHash, currentBlockData, nounce)
  }

  return { nounce, hash }
}

module.exports = BlockChain
