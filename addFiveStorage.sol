//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {simple} from "./simpleStorage.sol";

//inharating contract simple

contract addFiveStorage is simple{
    //useing keyword override to override function
    function store(uint256 _newNumber) public override{
        myFavoriteNumber = _newNumber +5;
    }
}