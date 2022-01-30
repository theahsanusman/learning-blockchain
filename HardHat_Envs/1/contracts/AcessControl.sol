//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract AcessControl {
    constructor() {
        _grantRole(ADMIN, msg.sender);
        console.log(msg.sender);
    }

    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    mapping(bytes32 => mapping(address => bool)) public roles;

    bytes32 public constant ADMIN = keccak256(abi.encodePacked("ADMIN"));
    bytes32 public constant USER = keccak256(abi.encodePacked("USER"));

    function _grantRole(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit GrantRole(_role, _account);
    }

    modifier isAdmin() {
        require(roles[ADMIN][msg.sender], "Only Admins are Allowed");
        _;
    }

    function grantRole(bytes32 _role, address _account) external isAdmin {
        _grantRole(_role, _account);
    }

    function revokeRole(bytes32 _role, address _account) external isAdmin {
        roles[_role][_account] = false;
        emit RevokeRole(_role, _account);
    }
}
