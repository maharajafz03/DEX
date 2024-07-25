// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract dex {

  uint totalDeposite;

 mapping (address => uint) public user

  constructor() {
    uint tokenA;
    uint tokenB;
}
 
   function swap(uint _tokenA, uint _tokenB) public {
       tokenA = _tokenA;
       tokenB = _tokenB;
   }

   function withdraw (uint _amount) public{
    require(_amount >= address(this).balance, "error");
   }

   function reward() public{
    user[msg.sender] = 
   }   

}
