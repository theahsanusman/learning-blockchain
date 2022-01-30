//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract LearningMappings {
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
    // delete balances[address] will delete the val in mapping
    }

    function getBal() external view returns (uint256) {
        return balances[msg.sender];
    }
}
