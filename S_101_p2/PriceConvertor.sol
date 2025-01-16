//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";


library PriceConvertor {
    function getPrice() internal view returns (uint256){
        //address 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
        //abi 
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
        (,int256 price ,,,) = PriceFeed.latestRoundData(); //we will get a 8 decimal numgber by this so we have to add 10 and also typecast
        //32000.00000000 
        return uint256(price * 1e10);
   }
    function getConversionRate(uint256 ethAmmount) internal view returns(uint256){
        uint256 ethPrice = getPrice();

        //(3200_000000000000000000 * 1000000000000000000) /1e18;
        uint256 ethAmmountInUsd = (ethPrice * ethAmmount) / 1e18;
        return ethAmmountInUsd;

    }

    function getVersion() internal view returns(uint256){
        return AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).version();
    }
}