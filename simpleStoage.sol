//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract simple{
// struct is used to define custom type
struct Person{
    uint256 number;
    string name;
}

//we are making array of Person(struct) aka dynamic array
Person[] public listOfPeople;

//static array
// Person[3] public listOfPeople;

function addPeople(uint256 _number,string memory _name) public {
    listOfPeople.push(Person(_number, _name)); //pushing new people in Person
}

// Person public myFriend = Person({ number : 7 , name: "pet"});

}