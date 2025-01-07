//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract twitter {

    //defining struct

    struct Tweet {
        uint256 id;
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    } 

    uint16 public MAX_TWEET_LENGHT = 280;
    address public owner;


    mapping(address => Tweet[] ) public tweets;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender ,  "you dont own this account...");
        _;
    }

    function changeTweetLength (uint16 length) public onlyOwner {
        MAX_TWEET_LENGHT = length;
    }

    function createTweet (string memory _tweet) public  {

        require(bytes(_tweet).length <= MAX_TWEET_LENGHT , "your message is too long (it should be less then 280 char");

        Tweet memory newTweet = Tweet({
            id : tweets[msg.sender].length,
            author: msg.sender,
            content : _tweet,
            timestamp : block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);
    }

    function likeTweet(address author, uint256 id) external  {

        require(tweets[author][id].id == id , "post doesnt exist");

        tweets[author][id].likes++;
    }

    function getTweet( uint _i)public view returns (Tweet memory)  {
        return tweets[msg.sender][_i];
    }
    function getAllTweets( ) public view returns (Tweet[] memory){
        return tweets[msg.sender];
    }
}