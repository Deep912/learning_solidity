//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract simple{

struct Person{
    uint256 number;
    string name;
}

Person public myFriend = Person({ number : 7 , name: "pet"});

}