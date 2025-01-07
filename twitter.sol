
Deploy & run transactions
Environment
VM
Account
Gas limit
Estimated Gas
Custom
Value
Contract
evm version: cancun
Publish to IPFS
Transactions recorded
10
Deployed Contracts
1
twitter at 0xe28...4157A (memory)
Balance: 0 ETH
changeTweetLength
length:

    0:
    uint16: 400

    0:
    address: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

Low level interactions
CALLDATA

45
46
47
48
49
43
44
40
41
42
37
38
39
35
36
32
33
34
29
30
31
27
28
24
25
26
22
23
19
20
21
0
Listen on all transactions
 Welcome to Remix 0.59.0 

Your files are stored in indexedDB, 707.3 KB / 10 GB used

You can use this terminal to: 

    Check transactions details and start debugging.
    Execute JavaScript scripts:
     - Input a script directly in the command line interface 
     - Select a Javascript file in the file explorer and then run `remix.execute()` or `remix.exeCurrent()`  in the command line interface 
     - Right-click on a JavaScript file in the file explorer and then click `Run` 

The following libraries are accessible:

    web3.js
    ethers.js 
    sol-gpt <your Solidity question here>  

Type the library name to see available commands.

creation of twitter pending...

[vm]
from: 0x5B3...eddC4
to: twitter.(constructor)
value: 0 wei
data: 0x608...a0033
logs: 0
hash: 0x12b...4bb1d

transact to twitter.createTweet pending ... 

[vm]
from: 0x5B3...eddC4
to: twitter.createTweet(string) 0xaE0...96B8b
value: 0 wei
data: 0x7c9...00000
logs: 0
hash: 0xbb3...bf71a

transact to twitter.createTweet pending ... 

[vm]
from: 0x5B3...eddC4
to: twitter.createTweet(string) 0xaE0...96B8b
value: 0 wei
data: 0x7c9...00000
logs: 0
hash: 0xb9f...aa32a

transact to twitter.createTweet errored: Error occurred: revert.

revert
	The transaction has been reverted to the initial state.
Reason provided by the contract: "your message is too long (it should be less then 280 char".
If the transaction failed for not having enough gas, try increasing the gas limit gently.

creation of twitter pending...

[vm]
from: 0x5B3...eddC4
to: twitter.(constructor)
value: 0 wei
data: 0x608...a0033
logs: 0
hash: 0x9b2...5342e

transact to twitter.createTweet pending ... 

[vm]
from: 0x5B3...eddC4
to: twitter.createTweet(string) 0x5FD...9d88D
value: 0 wei
data: 0x7c9...00000
logs: 0
hash: 0xb77...3db98

call to twitter.getAllTweets

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: twitter.getAllTweets()
data: 0x532...56135

call to twitter.getTweet

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: twitter.getTweet(uint256)
data: 0xc3a...00000

creation of PausableToken pending...

[vm]
from: 0x5B3...eddC4
to: PausableToken.(constructor)
value: 0 wei
data: 0x608...a0033
logs: 0
hash: 0x227...6974d

call to PausableToken.paused

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: PausableToken.paused()
data: 0x5c9...75abb

call to PausableToken.owner

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: PausableToken.owner()
data: 0x8da...5cb5b

call to PausableToken.balances

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: PausableToken.balances(address)
data: 0x27e...eddc4

transact to PausableToken.transfer pending ... 

[vm]
from: 0x5B3...eddC4
to: PausableToken.transfer(address,uint256) 0x332...D4B6D
value: 0 wei
data: 0xa90...00064
logs: 0
hash: 0x67a...31632

call to PausableToken.balances

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: PausableToken.balances(address)
data: 0x27e...eddc4

creation of twitter pending...

[vm]
from: 0x5B3...eddC4
to: twitter.(constructor)
value: 0 wei
data: 0x608...a0033
logs: 0
hash: 0x681...324ac

call to twitter.owner

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: twitter.owner()
data: 0x8da...5cb5b

transact to twitter.changeTweetLength pending ... 

[vm]
from: 0x5B3...eddC4
to: twitter.changeTweetLength(uint16) 0xe28...4157A
value: 0 wei
data: 0x58b...00190
logs: 0
hash: 0xa30...b8e9e

call to twitter.MAX_TWEET_LENGHT

call
[call]
from: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
to: twitter.MAX_TWEET_LENGHT()
data: 0x6c0...2e8b7

call to twitter.owner

call
[call]
from: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
to: twitter.owner()
data: 0x8da...5cb5b

transact to twitter.changeTweetLength pending ... 

[vm]
from: 0xAb8...35cb2
to: twitter.changeTweetLength(uint16) 0xe28...4157A
value: 0 wei
data: 0x58b...00190
logs: 0
hash: 0xb71...becf9

transact to twitter.changeTweetLength errored: Error occurred: revert.

revert
	The transaction has been reverted to the initial state.
Reason provided by the contract: "you dont own this account...".
If the transaction failed for not having enough gas, try increasing the gas limit gently.

call to twitter.owner

call
[call]
from: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
to: twitter.owner()
data: 0x8da...5cb5b

call to twitter.MAX_TWEET_LENGHT

call
[call]
from: 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
to: twitter.MAX_TWEET_LENGHT()
data: 0x6c0...2e8b7
>
Scam Alert
main
Did you know?
You can use the help of AI for Solidity error, click on 'Ask RemixAI'.
RemixAI Copilot (enabled)


