// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract Mappings{

    /*
    1. Declare mapping
    2. CRUD
    3. Default values
    4. Exatic mapping 1 : nested mappings
    5. Exatic mapping 2 : array inside mapping
    */

    // 1. declare mappings

    mapping(address=>uint) balances;
    // nested mapping
    // exotic mapping 1
    mapping(address=>mapping(address=>bool)) approved;

    // exotic mapping 2

    mapping(address=>uint[]) scores;

    function mappingDemo(address spender) external{
        // add
        balances[msg.sender]=100;
        // read
        balances[msg.sender];

        // update
        balances[msg.sender]=200;
        // delete
        delete balances[msg.sender];

        // default values 0 if address does not exists
        // balances["0x333"]
        // exotic mapping
        approved[msg.sender][spender]=true;
        approved[msg.sender][spender];
        approved[msg.sender][spender]=false;
        delete approved[msg.sender][spender];

        //exotic mapping 2
        scores[msg.sender].push(1);
        scores[msg.sender].push(2);
        scores[msg.sender].push(3);
        scores[msg.sender][0];
        scores[msg.sender][0]=10;
        delete scores[msg.sender][0];
    }
}