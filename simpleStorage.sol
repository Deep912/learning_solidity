//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract simple{
// struct is used to define custom type
struct Person{
    string name;
    uint256 number;
    
}

//we are making array of Person(struct) aka dynamic array
Person[] public listOfPeople;

//mapping a value to another value for ex string => uint256 = deep => 10 so string "deep" is now mapped with uint256 10 number
mapping (string => uint256) public nameToNumber;
//static array
// Person[3] public listOfPeople;

function addPeople(string memory _name,uint256 _number) public {
    listOfPeople.push(Person( _name ,_number)); //pushing new people in Person
    nameToNumber[_name] = _number; // we added function that will map name with number so deep to 10
}

// Person public myFriend = Person({ number : 7 , name: "pet"});

}