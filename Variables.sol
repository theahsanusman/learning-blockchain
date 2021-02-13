pragma solidity ^0.6.0;

contract LearningVariable {
 // State Variables
 string public pair = "BTC/USDT";
 bytes32 public impPair = "GRT/USDT";
 uint public amount = 100;
 uint256 public val = 3523534535;
 uint8 public valTwo = 0;
 address public myAdd = 0x9773d0dA32f0Ef40F3346dFD02f9BAF9f945BbA0;
 
 // Local Variables
 function createKEY() public pure returns(uint) {
     uint k = 3485958923;
     return k;
 }
 
 // Similar to Objects in JS
 struct PersonA {
    uint id;
    string name;

 }
 PersonA public personA = PersonA(243, "Alex");
 
}