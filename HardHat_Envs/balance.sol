// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Playing {

    address payable user = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    function payEther() public payable {

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function a() public view returns (address) {
        return address(this);
    } 

    function sendEther() public{
        user.transfer(1 ether);
    }

}