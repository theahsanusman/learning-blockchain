// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Demo{
    string[] public students = ['John','Abraham','Lincoln'];

    // Whenever we equal one array to other then it becomes like a clone in Storage
    function mem() public view {
        string[] memory s1 = students;
        s1[0] = 'DON';
    }

    function sto() public {
        string[] storage s1 = students;
        s1[0] = 'DON';
    }

}