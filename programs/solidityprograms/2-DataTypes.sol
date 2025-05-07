// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract DataTypes{
    
    int principal;
    int time;
    bool isCalcutated=false;
    int interest;
    int rateOfInterest;
    address myAccount=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    string course="block chain";
    
    constructor(){

    }

    function calculateSI(int _principal,int _rateOfInterest,int _time) public  {
        interest = (_principal * _rateOfInterest*_time)/100;
        isCalcutated=true;
        
    }

    function showInterest() public view returns(int){
        return interest;
    }

    function calculationStatus() public view returns(bool){
        return isCalcutated;
    }

    function getBalance() public view returns(uint){
        return myAccount.balance;
    }

}