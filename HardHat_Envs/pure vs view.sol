// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// View allows us get the value of state variable only

// While Pure don't allows us to get the value of state variable and don't allow to modify it's value 


contract test
{
    uint rollNumber=100;

    function a() public view returns(uint)
    {
        uint age=10;
        string memory name="Tom";
        return rollNumber+age;
    }

}
