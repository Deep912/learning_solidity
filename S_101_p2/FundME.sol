//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//importing interface from github
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

//either we copy whole code and past it like this to use or we can directly import it from github as shown above
// interface AggregatorV3Interface {
//   function decimals() external view returns (uint8);

//   function description() external view returns (string memory);

//   function version() external view returns (uint256);

//   function getRoundData(
//     uint80 _roundId
//   ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

//   function latestRoundData()
//     external
//     view
//     returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
// }

contract FundMe{
    
    uint256 public minimumUsd = 5;
    function fund() public payable {
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
        require(msg.value >= 1e18, "didnt send enough RTH ");// 1e18 = 1 ETH = 

    }
    function getPrice() public view returns (uint256){
        //address 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
        //abi 
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
        (,int256 price ,,,) = PriceFeed.latestRoundData(); //we will get a 18 decimal numgber by this so we have to convert it and also typecast
        return uint256(price * 1e10);
   }
    function getConversionRate() public{}

    function getVersion() public view returns(uint256){
        return AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).version();
    }
}