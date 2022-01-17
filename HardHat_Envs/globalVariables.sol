// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract fun {

    function play() public view returns(bytes32) {
        uint b = block.number;
        return (blockhash(b));
    }

}