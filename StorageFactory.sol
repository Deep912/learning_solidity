//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


//importing whole file 
//import "./simpleStorage.sol";

//importing specified contract
import {simple} from "./simpleStorage.sol";

contract StorageFactory{

    simple public simpleStorage;

    function createSimpleStorageContract() public  {
        simpleStorage = new simple();
    }
}