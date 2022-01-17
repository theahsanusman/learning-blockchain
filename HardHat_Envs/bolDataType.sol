// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract bol {
    bool public value;
    function isItReallyCold(int celsius) public returns(bool) {
        if(celsius<=10){
            value=true;
        } else{
            value=false;
        }
        return value;
    }
}