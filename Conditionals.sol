pragma solidity ^0.6.0;

contract LearningConditions {
   uint[] public nums = [1,2,3,4,5,6,7,8,9,10];
   
   address public owner;
   
   constructor() public {
       owner = msg.sender;
   }
   
   function countEvenNums()public view returns(uint){
       uint count = 0;
       for(uint i = 0; i < nums.length; i++){
         if(isEven(nums[i])) {
            count++;
        }
       }
       return count;
   }
   
    function isEven(uint _n) public view returns(bool) {
        if(_n % 2 == 0) {
            return true;
        }
        else{ 
            return false;
        }
    }
    
    function isOnwer() public view returns (bool) {
        return (msg.sender == owner);
        // if(msg.sender == owner){
        //     return true;
        // }
        // else{
        //     return false;
        // }
    }
    
}