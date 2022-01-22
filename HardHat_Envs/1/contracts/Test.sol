//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Test {
    function result() public pure returns (uint) {
        uint a=1;
        uint b=2;
        uint total = a+b;
        return total;
    }
    function bNo() public view returns (uint) {
        return block.number;
    }
}
