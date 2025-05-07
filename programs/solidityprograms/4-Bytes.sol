// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract BytesDemo{
    //bytes b1; // default value is 0 x 00
   // bytes b1=0x45;
   bytes b1="a";

    function getByteValue() public view returns(bytes memory){
        return b1;
    }
}