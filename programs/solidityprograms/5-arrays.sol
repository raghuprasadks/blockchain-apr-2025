// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract ArraysDemo{

    uint[] marks;
    uint[] runs=[10,20,30,40,50];
    //uint[5] englishMarks = [uint(50), 60,70,80,90];

    function addMarks(uint mark) public {
        marks.push(mark);

    }

    function removeMarks() public  {
        marks.pop();
        
    }

    function displayMarks() public view  returns(uint[] memory){
        return marks;
    }

    function displayLength() public view returns(uint){
        return marks.length;
    }
}