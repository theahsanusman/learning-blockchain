// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract localVar
{
    function store() public pure returns(uint)
    {
        // This Variable won't cost any gas fees it will initialzie on call and will go on the end of the function execution
        // Butt we can't store every data type as local vars that's why gotta use memory
        // String nor save in State neither in Stack it stores on memory
        string memory name="Ahsan";
        uint  n = 11;
        return n;
    }
}