// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

/*
Sending ether to a smart contract
*/

contract Payments{

    mapping(address=>uint) balances;

    function invest() external payable{
      //  if(msg.value<=1000){
          if(msg.value<=1 ether){
            revert();
        }
        balances[msg.sender] += msg.value;

    }

    function balanceOf() external view returns(uint){
        return address(this).balance;
    }
}