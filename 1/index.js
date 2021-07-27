const sha256 = require('sha256')

// Contructor Function
function BlockChain() {
  this.chain = []
  this.pendingTransactions = []
}

// Method
// NOUNCE IS A NUMBER BY PROOF OF WORK
// NEW BLOCK HASH IS GENERATED BASED UPON PREV.. BLOCK HASHES
// SHA256 algo with be used for HASH

BlockChain.prototype.createNewBlock = function (nounce, prevBlockHash) {
  const newBlock = {
    index: this.chain.length + 1,
    timestamp: Date(Date.now()),
    transactions: this.pendingTransactions,
    nounce,
    prevBlockHash,
  }
  const hash = this.blockHash(prevBlockHash, newBlock)
  newBlock.hash = hash
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

BlockChain.prototype.blockHash = function (prevBlockHash, currentBlockData) {
  const dataString = `${prevBlockHash}${currentBlockData}`
  return sha256(dataString)
}

module.exports = BlockChain
