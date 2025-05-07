// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <=0.9.0;

contract EnumDemo{

    enum week_days
    {
      Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday
     }

    // Declaring variables of
    // type enumerator
    week_days week;
    week_days choice;

    // setting a default value
    week_days constant default_value = week_days.Sunday;

    function setValue() public{
        choice=week_days.Wednesday;
    }

    function getChoice() public view returns(week_days){
        return choice;
    }

    function getDefaultValue() public pure  returns(week_days){
        return default_value;
    }




}