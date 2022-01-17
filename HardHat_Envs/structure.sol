// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Acts as Class in JS
// Helps to create dynamic objects by using the same template

struct Student {
    uint roll;
    string name;
}

contract School {
    Student public s1;
   
    function set() public {
        s1.roll=1;
        s1.name='John';
    }

    function change() public {
        // There are two Ways to Change the s1 Value
        // First Approach
        s1 = Student({
            roll: 2,
            name: "Abraham"
        });

        // Second Approach
        Student memory newStudent = Student({
            roll: 2,
            name:'Abraham'
        });
        s1 = newStudent;
    }

}