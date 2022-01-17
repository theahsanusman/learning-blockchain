// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FixedArrays
{

    string[] public fruits;

    function push(string memory fruitName) public
    {
        fruits.push(fruitName);
    }
    
    function length() view public returns(uint)
    {
        return fruits.length;
    }

    function popFruit() public
    {
        fruits.pop();
    }

}