//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract SendEth {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to, uint256 amount) external payable {
        _to.transfer(amount);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "Sent Failed");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 123}("");
        require(success, "Call Failed");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract EthReceive {
    event Log(uint256 amount, uint256 gass);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
