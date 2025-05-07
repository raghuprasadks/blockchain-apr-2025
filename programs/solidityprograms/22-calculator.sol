// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract Calculator{

    constructor(){

    }

    function add(uint num1,uint num2) public pure returns (uint){
        return num1+num2;
    }

    function subtract(uint num1,uint num2) public pure returns (uint){
        return num1-num2;
    }

    function multiply(uint num1,uint num2) public pure returns (uint){
        return num1*num2;
    }

    function divide(uint num1,uint num2) public pure returns (uint){
        return num1/num2;
    }



}