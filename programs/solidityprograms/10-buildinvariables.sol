// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract BuiltInVariables{

    /*
    tx
    tx.origin
    msg
    msg.value
    msg.sender
    block
    block.timestamp
    block.now- 1970 (sec)

    */

    address whoami;
    uint msgval;
    uint value;
    function setValue(uint _value) public payable{
        value=_value;
        whoami = msg.sender;
        msgval = msg.value;    
    }


    function getValues() public  payable returns (address,uint,uint){
        return (msg.sender,msg.value,block.number);
    }
}