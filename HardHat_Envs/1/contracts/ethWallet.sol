//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract EthWallet {
    address payable public immutable owner;
    constructor() {
        owner = payable(msg.sender);
    }
    receive() payable external {}
    
    modifier isOwner() {
        require(msg.sender==owner,"Only Owner can Call this function");
        _;
    }

    function withDraw(uint _amount) external isOwner {
        owner.transfer(_amount);
    } 
}