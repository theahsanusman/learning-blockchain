const BlockChain = require('./index')

const Bitcoin = new BlockChain()
const chain = Bitcoin.chain;


Bitcoin.createNewBlock(
  12423,
  '6B86B273FF34FCE19D6B804EFF5A3F5747ADA4EAA22F1D49C01E52DDB7875B4B',
)
Bitcoin.createNewBlock(4644, chain[chain.length - 1].hash)

Bitcoin.createNewTransaction(100, 'senvnio', 'recipeint.......')
Bitcoin.createNewTransaction(200, 'senvnio', 'recipeint.......')
Bitcoin.createNewTransaction(50, 'senvnio', 'recipeint.......')

Bitcoin.createNewBlock(999, chain[chain.length - 1].hash)

console.log(chain)
