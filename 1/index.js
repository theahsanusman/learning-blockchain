// Contructor Function
function BlockChain() {
  this.chain = []
  this.pendingTransactions = []
}

// Method
// NOUNCE IS A NUMBER BY PROOF OF WORK
// NEW BLOCK HASH IS GENERATED BASED UPON PREV.. BLOCK HASHES
// SHA256 algo with be used for HASH

BlockChain.prototype.createNewBlock = function (nounce, prevBlockHash, hash) {
  const newBlock = {
    index: this.chain.length + 1,
    timestamp: Date(Date.now()),
    transactions: this.pendingTransactions,
    nounce,
    prevBlockHash,
    hash,
  }

  this.chain.push(newBlock)
  this.pendingTransactions = []

  return newBlock
}

module.exports = BlockChain
