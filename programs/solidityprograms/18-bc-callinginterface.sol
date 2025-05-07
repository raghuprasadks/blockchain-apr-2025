// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

import "./17-bc-contractwithinterface.sol";

/*
1. call function of other contract
2. import keyword
3. contract interface
4. error propagation
*/
contract A{
    address addressB;
    function setAddressB(address _addressB) external{
        addressB=_addressB;
    }

    function callHelloWorld() external  returns(string memory){
        InterfaceB b = InterfaceB(addressB);
        return b.helloWorld();
    }
    
}
