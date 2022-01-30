//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Payable {
    address payable public owner;

    constructor() {
         owner = payable(msg.sender);
    }
    function deposit() payable external {}

    function getBal() view public returns (uint) {
        return address(this).balance;
    }
}