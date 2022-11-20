//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


// import "hardhat/console.sol";



contract voting{
     string public question;
   uint   sayyes=0;
   uint   sayno=0;
address owner;
string loss;
string winner;
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
function yes() public  {
      sayyes++;
}
function no() public {
    sayno++;
}
function result( ) public view  returns(string memory ){
if(sayyes > sayno) {
 return "win";
}return "loss";
}
}