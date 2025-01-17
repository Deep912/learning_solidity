//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FallBackEx {
    uint256 public result;

//when you make transection or send eth to this contract then it will get executed if you dont pass any data
    receive() external payable{
        result =1;
    }
// it is fallback function if you transit any data or call any function thats not there it will call fallback function
    fallback() external payable{
        result = 2;
    }
}