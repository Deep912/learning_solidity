//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {PriceConvertor} from "./PriceConvertor.sol";
//importing interface from github


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
    using PriceConvertor for uint256;
    uint256 public minimumUsd = 5 * 1e18;

    address[] public funders;

    //both are same one is good to understand
    mapping(address funder => uint256 ammountFunded) public addressToAmmountFunded;
    // mapping(address  => uint256) public addressToAmmountFunded;

    function fund() public payable {

        
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
                //we create our function here , msg.value will be set as input for getConversionRate()
        require(msg.value.getConversionRate() >= minimumUsd, "Didn't send enough ETH!");// 1e18 = 1 ETH = 
        funders.push(msg.sender);
        addressToAmmountFunded[msg.sender] = addressToAmmountFunded[msg.sender] + msg.value;
    }
    
}