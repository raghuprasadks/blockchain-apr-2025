// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract StructureDemo{
    // 1. declare struct
    // 2- CRUD
    // 3 - Array of struct
    // 4 - Mapping of struct

    struct User{
        address addr;
        uint score;
        string name;    
    }
    User[] users;

    mapping(address => User) userList;

    function structOps(string calldata _name) external{
        User memory user1 = User(msg.sender,0,_name);
        User memory user2 = User(msg.sender,0,_name);
        User memory user3 = User({name:_name,score:0,addr:msg.sender});
        user3.addr;
        user3.score=20;
        delete user1;
        users.push(user2);
        userList[msg.sender]=user3;
    }
}