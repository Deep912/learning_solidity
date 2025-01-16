//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract FundMe{
    
    uint256 public minimumUsd = 5;
    function fund() public payable {
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
        require(msg.value >= 1e18, "didnt send enough RTH ");// 1e18 = 1 ETH = 

    }
    function getPrice() public {
        //address 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
        //abi 
        // AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).version();
    }
    function getConversionRate() public{}

    function getVersion() public view returns(uint256){
        return AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).version();
    }
}