//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract LearningEnum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancled
    }

    Status public status;

    struct Order {
        address owner;
        Status status;
    }

    Order[] public orders;

    function set(Status _status) private {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }

    function del() external {
        delete status;
    }
}
