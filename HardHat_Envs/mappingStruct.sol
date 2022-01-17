// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Student {
    string name;
    uint class;
}

contract MS {
    // Keys cannt be types mapping, dynamic array, enum & strcut
    // While Values can be of any type
    // Mappings always store in storage whether they are declared inside or outside of contract
    mapping(uint=>Student) public data;

    function setter(uint rollNo, string memory name, uint class) public {
        data[rollNo]=Student(name,class);
    }

}