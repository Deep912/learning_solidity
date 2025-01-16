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
    
    uint256 public minimumUsd = 5 * 1e18;

    address[] public funders;

    //both are same one is good to understand
    mapping(address funder => uint256 ammountFunded) public addressToAmmountFunded;
    // mapping(address  => uint256) public addressToAmmountFunded;

    function fund() public payable {
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
        require(getConversionRate(msg.value) >= minimumUsd, "Didn't send enough ETH!");// 1e18 = 1 ETH = 
        funders.push(msg.sender);
        addressToAmmountFunded[msg.sender] = addressToAmmountFunded[msg.sender] + msg.value;
    }
    function getPrice() public view returns (uint256){
        //address 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
        //abi 
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
        (,int256 price ,,,) = PriceFeed.latestRoundData(); //we will get a 8 decimal numgber by this so we have to add 10 and also typecast
        //32000.00000000 
        return uint256(price * 1e10);
   }
    function getConversionRate(uint256 ethAmmount) public view returns(uint256){
        uint256 ethPrice = getPrice();

        //(3200_000000000000000000 * 1000000000000000000) /1e18;
        uint256 ethAmmountInUsd = (ethPrice * ethAmmount) / 1e18;
        return ethAmmountInUsd;

    }

    function getVersion() public view returns(uint256){
        return AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).version();
    }
}