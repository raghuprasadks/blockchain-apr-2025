// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract PaymentFromContract{
    /*
    1. Transfer
    2. address vs address payable
    3. address payable casting (address and uint160)
    4. msg.sender
    5. send vs trasfer
    */
    /*
    transfer payment from contract to receipient
    */
    function sendEther(address payable receipient)  payable external{
       // receipient.transfer(1 ether);
       receipient.transfer(1000);

       /*
       address a;
       a=receipient;
       a.transfer(100)
       msg.sender.transfer(100);
       receipient.send(1 ether);
       */
    }
}