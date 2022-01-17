// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract test {
    function a() public pure returns(uint){
        return 1;
    }
    function b() private pure returns(uint){
        return 2;
    }
    function c() internal pure returns(uint){
        return 3;
    }
    function d() external pure returns(uint){
        return 4;
    }
}

contract b is test {
    uint public x = c();
}