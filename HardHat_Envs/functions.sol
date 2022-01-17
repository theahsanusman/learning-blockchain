// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Func
{
    uint age;

    // Whenever we are fetching the values we don't have to pay the gas
    
    // View shows we are only fetching the valus
    function getter() public view returns(uint)
    {
        return age;
    }

    // Gas will only apply when we are making changes to the data/blockchain
    function setter(uint newAge) public
    {
        age=newAge;
    }

    function test() public pure returns(string memory)
    {
        string memory name="Ahsan";
        return name;
    }

}