//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Fallback {
    event Log(string func, address sender, uint val, bytes data);
    // if msg.data is empty then receive will call otherwise if msg.data contains data then fallback will be called
   fallback() external payable {
       emit Log('fallback', msg.sender, msg.value, msg.data);
   }

   receive() external payable {
       emit Log('fallback', msg.sender, msg.value, '');
   }
}