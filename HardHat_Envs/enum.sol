// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    // Makes Easier to Default Parameters for certain conditions
    enum user{none,allowed,notAllowed}
    user public currentUser;

    constructor(uint passCode){
        if(passCode==2101){
            currentUser = user.allowed;
        }else{
            currentUser = user.notAllowed;
        }
    }

    function lotteryStatus() public view returns (string memory) {
        if(currentUser == user.allowed){
            return "Congratulations! You WON :)";
        }else{
            return "Connect Your Wallet First";
        }
    }

}