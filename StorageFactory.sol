//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


//importing whole file 
//import "./simpleStorage.sol";

//importing specified contract
import {simple} from "./simpleStorage.sol";


contract StorageFactory{
    //when function deploys new contract it will over write old contract (values etc)
    // simple public simpleStorage;

//now here we are creating list/array so we can keep track of deployment and it wont over write old
    simple[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public  {
        simple newSimpleContract = new simple();
        listOfSimpleStorageContracts.push(newSimpleContract);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _newSimpleStorageNumber) public {
        // address
        // abi - Application binary interface
        simple mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
    return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    
}
}

