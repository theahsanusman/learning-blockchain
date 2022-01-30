//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Test {
    // uint public age;
    // uint private height = 6;
    // function updateAge(uint _age) public {
    //     age = _age;
    //     height = 31;
    // }

    // Concatenation
    string public first = "Hello";
    string public last = "World";
    
    function getFullName() view public returns(string memory) {
        return string(abi.encodePacked(first," ", last));
    }
}
