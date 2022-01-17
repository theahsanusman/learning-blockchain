// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Identity
{
    string name;
    uint age;

    constructor()
    {
        name="Ahsan";
        age=21;
    }

    function getName() public view returns(string memory)
    {
        return name;
    }

    function getAge() public view returns(uint)
    {
        return age;
    }

    function setAge() public
    {
        age=age+1;
    }

}