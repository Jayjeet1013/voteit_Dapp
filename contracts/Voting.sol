//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


// import "hardhat/console.sol";



contract Voting{
     string public question;
uint public vote;
address owner;

   constructor(){
    owner = msg.sender;
   }
   modifier onlyowner(){
      require(msg.sender == owner);
      _;
   }
function askquesition( string memory _question) public onlyowner returns(string memory) 
{     
     return question=_question;
}

function Result() public {
  vote++;
}

}