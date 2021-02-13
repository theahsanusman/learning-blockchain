pragma solidity ^0.6.0;

contract LearningArrays {
    // Arrays
    string[] public fruits  = ['apple','','',''];
    address[] public adds = [0x9773d0dA32f0Ef40F3346dFD02f9BAF9f945BbA0,0x9773d0dA32f0Ef40F3346dFD02f9BAF9f945BbA0,0x9773d0dA32f0Ef40F3346dFD02f9BAF9f945BbA0];
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    
    function addFruits(string memory _value) public {
        fruits.push(_value);
    }
    
    function countFrutis () public view returns (uint){
        return fruits.length;
    }
}