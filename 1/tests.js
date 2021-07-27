const BlockChain = require('./index')

const Bitcoin = new BlockChain()

Bitcoin.createNewBlock(
    12423,
    '3243242',
    '3532342'
);

console.log(Bitcoin.chain)