const sha256 = require('sha256')

function Chain() {
  this.chain = []
  this.pendingTransactions = []
  // Genesis Block
  this.chain.push({
    index: 1,
    timestamp: Date(Date.now()),
    prevBlockHash: 0,
    hash: 0,
    nounce: 100,
    transactions: [],
  })
}

Chain.prototype.createNewBlock = function () {
  const newBlock = {
    index: this.chain.length + 1,
    timestamp: Date(Date.now()),
    prevBlockHash: this.chain[this.chain.length - 1].hash,
    transactions: [...this.pendingTransactions],
  }
  this.pendingTransactions.length = 0
  const { nounce, hash } = this.POW(newBlock)
  newBlock.nounce = nounce
  newBlock.hash = hash
  this.chain.push(newBlock)
  return newBlock
}

Chain.prototype.createNewTransaction = function (amount, sender, recipeint) {
  this.pendingTransactions.push({
    amount,
    sender,
    recipeint,
    timestamp: Date.now(),
  })
}

Chain.prototype.POW = function (block, prevBlockHash) {
  let nounce = 1
  let hash = this.hash(prevBlockHash, nounce, block)
  while (hash.substring(0, 4) !== '0000') {
    nounce++
    hash = this.hash(prevBlockHash, nounce, block)
  }
  return { nounce, hash }
}

Chain.prototype.hash = function (prevBlockHash, nounce, data) {
  const dataString = sha256(`${prevBlockHash}${nounce}${data}`)
  return dataString
}

module.exports = Chain
