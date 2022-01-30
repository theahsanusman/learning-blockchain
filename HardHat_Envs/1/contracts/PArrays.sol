//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract LearningArrays {
    uint256[] public a = [1, 2, 3, 4];
    uint256[3] public b = [1, 2, 3];

    function t() public {
        a.push(4);

        delete a[0]; // length of the array remain same and that index value will be 0

        a.pop();

        // Creating arrays in function
        uint256[] memory c = new uint256[](2);
        // Pop and push wont work in memory arrays
    }

    function returnArray() public view returns (uint256[] memory) {
        return a;
    }

    // Solve delete keyword problem
    // Not Gas Effient Way
    function remove(uint256 _i) public {
        require(_i < a.length, "index is out of bound");
        for (uint256 i = _i; i < a.length - 1; i++) {
            a[i] = a[i + 1];
            console.log(a[i]);
        }
        a.pop();
    }
}
