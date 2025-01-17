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

error NotOwner();

contract FundMe{
    using PriceConvertor for uint256;
    uint256 public constant MINIMUM_USD = 5 * 1e18;

    address[] public funders;

//to save some gas we are using immutable keyword 
    address public immutable i_owner;

    constructor(){
        i_owner = msg.sender;
    }

    //both are same one is good to understand
    mapping(address funder => uint256 ammountFunded) public addressToAmmountFunded;
    // mapping(address  => uint256) public addressToAmmountFunded;

    function fund() public payable {

        
        //allowing users to send $
        //have a minimum $ sent
        //1. how do we sned ETH to this contract?
                //we create our function here , msg.value will be set as input for getConversionRate()
        require(msg.value.getConversionRate() >= MINIMUM_USD, "Didn't send enough ETH!");// 1e18 = 1 ETH = 
        funders.push(msg.sender);

        // both are same
        // addressToAmmountFunded[msg.sender] = addressToAmmountFunded[msg.sender] + msg.value;
        addressToAmmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner {
       for (uint256 funderIndex = 0; funderIndex < funders.length; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmmountFunded[funder] = 0;
       }  
    //    resetting the array
       funders = new address[](0); 

       //thee types to transffer fund from contract to wallet

        //1. transffer
        //this makes addpress payable payable(msg.sender) . its required to transffer funds
        payable(msg.sender).transffer(address(this).balance);
        //2.send
        bool sendSuccess = payable(msg.sender).send(address(this).balance);
        require(sendSuccess, "send failed");

        //3 call
        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
    }

    modifier onlyOwner(){
        // require(msg.sender == i_owner, "back off!! you are not the owner");
        //using custome error so we dont have to store string , so less gas 
        if(msg.sender != i_owner){revert NotOwmer();}
        _;
    }

    receive() external payable{
        fund();
    }

    fallback() external payable{
        fund();
    }
    
}