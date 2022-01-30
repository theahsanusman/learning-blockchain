//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract LearningStructs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }

    Car public car;

    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({model: "Lambo", year: 2022, owner: msg.sender});
        Car memory tesla;
        tesla.year = 2020;
        tesla.model = "S";
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        // Play around with State Level Array
        // Car memory _car = cars[0];
        // _car.year = 2001; // cars[0] year didn't chagned

        // but when used storage state level change happened
        Car storage _car = cars[0];
        _car.year = 2001; //
    }

    function getCarsInfo() external view returns (Car[] memory) {
        return cars;
    }

}
