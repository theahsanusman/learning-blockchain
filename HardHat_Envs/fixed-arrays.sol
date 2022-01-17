// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FixedArrays
{
    uint[3] public nums = [0,1,2]; 
    string[3] public fruits = ["apple", "banana", "orange"];

    function Change(uint index, string memory fruit) public
    {
        fruits[index]=fruit;
    }

}