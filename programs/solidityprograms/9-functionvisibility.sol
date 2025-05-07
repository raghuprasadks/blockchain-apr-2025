// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract FunctionVisibility{

    uint value;

    uint  public valuepub;
    /*
    Visibility - public,private,external,internal
    public - visible inside and outside contract
    private - visible only inside the contract
    external - visible outside the contract but not inside the contract
    internal - visible with in contract and the contracts which inherits
    */
    /*
    function setValue(uint _value) internal{
        value=_value;
    }
    */

    function setValue(uint _value) external{
        value=_value;
    }

    function getValue() public view returns(uint){
        return value;
    }
}