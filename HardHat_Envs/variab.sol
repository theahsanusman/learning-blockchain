// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Var
{
    // Below is the State Variable
    // public is use to replace get function to get value of variable
    // State Variables are expensive cuz' they store in blockchain that's why we gotta pay fess for'em
    uint public num;

    // There're 3 ways to change the value of variable
    // First
    string public name = "Ahsan";

    // Second
    constructor()
    {
        num=2;
    }

    // Third
    function setNum() public
    {
        num=3;
    }

}