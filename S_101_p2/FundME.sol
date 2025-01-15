//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FundMe{

    uint256 public minimumUsd = 5;
    function fund() public payable {
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
        require(msg.value >= 1e18, "didnt send enough RTH ");// 1e18 = 1 ETH = 

    }
}