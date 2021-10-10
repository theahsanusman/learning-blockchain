const BlockChain = require('./chain_2')

const OOCOIN = new BlockChain()
const chain = OOCOIN.chain;

OOCOIN.createNewTransaction(100,'ahsan', 'ahsan2')

OOCOIN.createNewBlock()

console.log(OOCOIN)