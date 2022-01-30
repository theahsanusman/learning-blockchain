//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract LearningHash {
    function has(
        string calldata t,
        uint256 n
    ) external view returns (bytes32) {
        return keccak256(abi.encodePacked(t, n, msg.sender));
    }
}
