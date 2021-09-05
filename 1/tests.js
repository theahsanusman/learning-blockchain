const BlockChain = require('./blockchain')

const Bitcoin = new BlockChain()
const chain = Bitcoin.chain;


Bitcoin.createNewBlock(chain[chain.length - 1].hash)

Bitcoin.createNewTransaction(100, 'senvnio', 'recipeint.......')
Bitcoin.createNewTransaction(200, 'senvnio', 'recipeint.......')
Bitcoin.createNewTransaction(50, 'senvnio', 'recipeint.......')

Bitcoin.createNewBlock(chain[chain.length - 1].hash)
Bitcoin.createNewBlock(chain[chain.length - 1].hash)

console.log(chain)
