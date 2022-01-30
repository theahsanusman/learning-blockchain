//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Killer {
    // address payable public immutable owner;

    constructor() payable {
        // owner = payable(msg.sender);
    }

    // modifier isOwner() {
    //     require(msg.sender == owner, "Owner ONly");
    //     _;
    // }

    function kill() external  {
        selfdestruct(payable(msg.sender));
    }

    function testCall() external pure returns (uint256) {
        return 123;
    }
}

contract Helper {
    function getBal() external view returns(uint){
        return address(this).balance;
    }

    function kill(Killer _kill) external {
        _kill.kill();
    }
}