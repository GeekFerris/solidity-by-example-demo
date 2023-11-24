// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/*
local: declared inside a function
    not store on the blockchain

state: declared outside a function
    stored on the blockchain

global: provides information about the blockchain
*/
contract Variables {
    // State variables are stored on the blockchain
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}