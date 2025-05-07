// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

abstract contract  InterfaceB{

     function helloWorld() external virtual returns (string memory);

}

contract B{
    function helloWorld() external pure returns (string memory){
        return 'HelloWorld';
    }

    function foo() external{
        //whatever
    }
}