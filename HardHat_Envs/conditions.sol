// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Conditions {
    function check(int a) public pure returns(string memory) {
        string memory value;
      
        if (a>0){
           value="a is greater than 0"; 
        }
        else if (a==0){
            value="a is 0";
        }
        else{
            value="a is less than 0";
        }
        return value;
    }
}